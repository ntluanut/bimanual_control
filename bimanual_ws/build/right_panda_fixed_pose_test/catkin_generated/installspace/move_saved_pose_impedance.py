#!/usr/bin/env python3

import argparse
import math
import sys
from typing import Any, Dict, Optional, Tuple

import numpy as np
import rospy
import yaml

from franka_msgs.msg import FrankaState
from geometry_msgs.msg import PoseStamped
from tf.transformations import (
    quaternion_from_matrix,
    quaternion_slerp,
)


STATE_TOPIC = "/franka_state_controller/franka_states"
TARGET_TOPIC = "/cartesian_impedance_example_controller/equilibrium_pose"
OUTPUT_FRAME = "panda_link0"


latest_state: Optional[FrankaState] = None


def state_callback(msg: FrankaState) -> None:
    global latest_state
    latest_state = msg


def normalise_quaternion(q: np.ndarray) -> np.ndarray:
    norm = float(np.linalg.norm(q))
    if norm < 1.0e-10:
        raise ValueError("Quaternion has near-zero norm.")
    return q / norm


def quaternion_angle(q0: np.ndarray, q1: np.ndarray) -> float:
    """Shortest angular distance between two unit quaternions."""
    q0 = normalise_quaternion(q0)
    q1 = normalise_quaternion(q1)

    dot = float(np.dot(q0, q1))
    dot = abs(max(-1.0, min(1.0, dot)))

    return 2.0 * math.acos(dot)


def smoothstep5(u: float) -> float:
    """Quintic interpolation: zero velocity and acceleration at endpoints."""
    u = max(0.0, min(1.0, u))
    return 10.0 * u**3 - 15.0 * u**4 + 6.0 * u**5


def get_current_pose() -> Tuple[np.ndarray, np.ndarray]:
    if latest_state is None:
        raise RuntimeError("No Franka state has been received.")

    # Franka's O_T_EE is a column-major homogeneous transformation.
    transform = np.array(
        latest_state.O_T_EE,
        dtype=float
    ).reshape((4, 4), order="F")

    position = transform[:3, 3].copy()
    quaternion = quaternion_from_matrix(transform)
    quaternion = normalise_quaternion(np.asarray(quaternion, dtype=float))

    return position, quaternion


def find_named_pose(data: Any, pose_name: str) -> Dict[str, Any]:
    """
    Support several common YAML layouts:

      poses:
        bottle_approach:
          ...

      bottle_approach:
        ...

      taught_poses:
        bottle_approach:
          ...

      - name: bottle_approach
        pose: ...
    """
    if isinstance(data, dict):
        if pose_name in data and isinstance(data[pose_name], dict):
            return data[pose_name]

        for container_name in (
            "poses",
            "taught_poses",
            "saved_poses",
            "targets",
        ):
            container = data.get(container_name)

            if isinstance(container, dict):
                if pose_name in container:
                    return container[pose_name]

            if isinstance(container, list):
                for item in container:
                    if (
                        isinstance(item, dict)
                        and item.get("name") == pose_name
                    ):
                        return item

        if data.get("name") == pose_name:
            return data

        for value in data.values():
            if isinstance(value, (dict, list)):
                try:
                    return find_named_pose(value, pose_name)
                except KeyError:
                    pass

    elif isinstance(data, list):
        for item in data:
            if isinstance(item, dict) and item.get("name") == pose_name:
                return item

            try:
                return find_named_pose(item, pose_name)
            except KeyError:
                pass

    raise KeyError(
        f"Could not find pose '{pose_name}' in the YAML file."
    )


def unwrap_pose_node(node: Dict[str, Any]) -> Dict[str, Any]:
    """Descend through common pose wrappers."""
    current = node

    for key in ("pose", "target_pose", "equilibrium_pose", "transform"):
        if key in current and isinstance(current[key], dict):
            current = current[key]

    return current


def xyz_from_value(value: Any) -> np.ndarray:
    if isinstance(value, dict):
        return np.array(
            [
                float(value["x"]),
                float(value["y"]),
                float(value["z"]),
            ],
            dtype=float,
        )

    if isinstance(value, (list, tuple)) and len(value) >= 3:
        return np.asarray(value[:3], dtype=float)

    raise ValueError(f"Unsupported position format: {value!r}")


def quaternion_from_value(value: Any) -> np.ndarray:
    if isinstance(value, dict):
        q = np.array(
            [
                float(value["x"]),
                float(value["y"]),
                float(value["z"]),
                float(value["w"]),
            ],
            dtype=float,
        )
        return normalise_quaternion(q)

    if isinstance(value, (list, tuple)) and len(value) >= 4:
        return normalise_quaternion(
            np.asarray(value[:4], dtype=float)
        )

    raise ValueError(f"Unsupported orientation format: {value!r}")


def extract_target_pose(
    yaml_data: Any,
    pose_name: str
) -> Tuple[np.ndarray, np.ndarray, str]:
    node = find_named_pose(yaml_data, pose_name)

    source_frame = str(
        node.get(
            "frame_id",
            node.get("frame", node.get("reference_frame", "unknown")),
        )
    )

    node = unwrap_pose_node(node)

    position_value = None
    for key in ("position", "translation", "xyz"):
        if key in node:
            position_value = node[key]
            break

    orientation_value = None
    for key in ("orientation", "quaternion", "rotation"):
        if key in node:
            orientation_value = node[key]
            break

    # Support flat representations.
    if position_value is None:
        if all(key in node for key in ("x", "y", "z")):
            position_value = {
                "x": node["x"],
                "y": node["y"],
                "z": node["z"],
            }
        elif all(key in node for key in ("px", "py", "pz")):
            position_value = {
                "x": node["px"],
                "y": node["py"],
                "z": node["pz"],
            }

    if orientation_value is None:
        if all(key in node for key in ("qx", "qy", "qz", "qw")):
            orientation_value = {
                "x": node["qx"],
                "y": node["qy"],
                "z": node["qz"],
                "w": node["qw"],
            }

    if position_value is None:
        raise ValueError(
            f"Pose '{pose_name}' has no recognisable position."
        )

    if orientation_value is None:
        raise ValueError(
            f"Pose '{pose_name}' has no recognisable quaternion."
        )

    position = xyz_from_value(position_value)
    quaternion = quaternion_from_value(orientation_value)

    return position, quaternion, source_frame


def make_pose_message(
    position: np.ndarray,
    quaternion: np.ndarray
) -> PoseStamped:
    msg = PoseStamped()
    msg.header.stamp = rospy.Time.now()
    msg.header.frame_id = OUTPUT_FRAME

    msg.pose.position.x = float(position[0])
    msg.pose.position.y = float(position[1])
    msg.pose.position.z = float(position[2])

    msg.pose.orientation.x = float(quaternion[0])
    msg.pose.orientation.y = float(quaternion[1])
    msg.pose.orientation.z = float(quaternion[2])
    msg.pose.orientation.w = float(quaternion[3])

    return msg


def wait_for_robot_state(timeout: float = 10.0) -> None:
    deadline = rospy.Time.now() + rospy.Duration(timeout)
    rate = rospy.Rate(20)

    while not rospy.is_shutdown() and latest_state is None:
        if rospy.Time.now() > deadline:
            raise RuntimeError(
                f"No messages received from {STATE_TOPIC} "
                f"within {timeout:.1f} seconds."
            )
        rate.sleep()


def wait_for_subscriber(
    publisher: rospy.Publisher,
    timeout: float = 10.0
) -> None:
    deadline = rospy.Time.now() + rospy.Duration(timeout)
    rate = rospy.Rate(20)

    while not rospy.is_shutdown() and publisher.get_num_connections() == 0:
        if rospy.Time.now() > deadline:
            raise RuntimeError(
                f"No subscriber connected to {TARGET_TOPIC} "
                f"within {timeout:.1f} seconds."
            )
        rate.sleep()


def publish_pose_for_duration(
    publisher: rospy.Publisher,
    position: np.ndarray,
    quaternion: np.ndarray,
    duration: float,
    frequency: float,
) -> None:
    rate = rospy.Rate(frequency)
    end_time = rospy.Time.now() + rospy.Duration(duration)

    while not rospy.is_shutdown() and rospy.Time.now() < end_time:
        publisher.publish(make_pose_message(position, quaternion))
        rate.sleep()


def main() -> int:
    parser = argparse.ArgumentParser(
        description=(
            "Move the stock Franka Cartesian impedance equilibrium pose "
            "smoothly to a saved YAML target."
        )
    )

    parser.add_argument(
        "yaml_file",
        help="Path to the taught-pose YAML file.",
    )
    parser.add_argument(
        "--pose-name",
        default="bottle_approach",
        help="Pose name in the YAML file.",
    )
    parser.add_argument(
        "--linear-speed",
        type=float,
        default=0.01,
        help="Maximum Cartesian target speed in m/s.",
    )
    parser.add_argument(
        "--angular-speed",
        type=float,
        default=0.05,
        help="Maximum angular target speed in rad/s.",
    )
    parser.add_argument(
        "--rate",
        type=float,
        default=100.0,
        help="Equilibrium target publication rate in Hz.",
    )
    parser.add_argument(
        "--minimum-duration",
        type=float,
        default=5.0,
        help="Minimum interpolation duration in seconds.",
    )
    parser.add_argument(
        "--hold-seconds",
        type=float,
        default=5.0,
        help="Publish final target for this many seconds.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print the calculated movement without commanding the robot.",
    )
    parser.add_argument(
        "--yes",
        action="store_true",
        help="Skip the interactive confirmation.",
    )

    args = parser.parse_args(rospy.myargv(argv=sys.argv)[1:])

    if args.linear_speed <= 0.0:
        raise ValueError("--linear-speed must be positive.")

    if args.angular_speed <= 0.0:
        raise ValueError("--angular-speed must be positive.")

    if args.rate < 20.0:
        raise ValueError("--rate should be at least 20 Hz.")

    with open(args.yaml_file, "r", encoding="utf-8") as stream:
        yaml_data = yaml.safe_load(stream)

    target_position, target_quaternion, source_frame = (
        extract_target_pose(yaml_data, args.pose_name)
    )

    rospy.init_node("move_right_saved_pose_impedance", anonymous=False)

    rospy.Subscriber(
        STATE_TOPIC,
        FrankaState,
        state_callback,
        queue_size=1,
        tcp_nodelay=True,
    )

    publisher = rospy.Publisher(
        TARGET_TOPIC,
        PoseStamped,
        queue_size=1,
    )

    rospy.loginfo("Waiting for Franka state...")
    wait_for_robot_state()

    rospy.loginfo("Waiting for impedance-controller subscriber...")
    wait_for_subscriber(publisher)

    start_position, start_quaternion = get_current_pose()

    # Force quaternion interpolation along the shortest representation.
    if float(np.dot(start_quaternion, target_quaternion)) < 0.0:
        target_quaternion = -target_quaternion

    translation_distance = float(
        np.linalg.norm(target_position - start_position)
    )

    rotation_distance = quaternion_angle(
        start_quaternion,
        target_quaternion,
    )

    # Quintic smoothstep has a maximum ds/du of 1.875.
    # Multiply nominal duration by 1.875 so peak speed remains bounded.
    translation_duration = (
        1.875 * translation_distance / args.linear_speed
    )
    rotation_duration = (
        1.875 * rotation_distance / args.angular_speed
    )

    duration = max(
        args.minimum_duration,
        translation_duration,
        rotation_duration,
    )

    print("")
    print("==========================================================")
    print(" CARTESIAN IMPEDANCE SAVED-POSE MOVE")
    print("==========================================================")
    print(f"YAML file:       {args.yaml_file}")
    print(f"Pose name:       {args.pose_name}")
    print(f"Saved frame:     {source_frame}")
    print(f"Published frame: {OUTPUT_FRAME}")
    print("")
    print(
        "Start XYZ:       "
        f"{start_position[0]: .6f} "
        f"{start_position[1]: .6f} "
        f"{start_position[2]: .6f}"
    )
    print(
        "Target XYZ:      "
        f"{target_position[0]: .6f} "
        f"{target_position[1]: .6f} "
        f"{target_position[2]: .6f}"
    )
    print(
        f"Translation:     {translation_distance * 1000.0:.1f} mm"
    )
    print(
        f"Rotation:        {math.degrees(rotation_distance):.1f} deg"
    )
    print(f"Duration:        {duration:.1f} s")
    print(f"Linear limit:    {args.linear_speed:.4f} m/s")
    print(f"Angular limit:   {args.angular_speed:.4f} rad/s")
    print("==========================================================")
    print("")

    if source_frame not in (
        "unknown",
        "panda_link0",
        "panda_right_link0",
    ):
        print(
            f"WARNING: Saved frame '{source_frame}' is not one of the "
            "expected Panda base-frame names."
        )

    if args.dry_run:
        print("Dry run only: no command was published.")
        return 0

    if not args.yes:
        answer = input(
            "Robot workspace clear and emergency stop ready? "
            "Type MOVE to continue: "
        ).strip()

        if answer != "MOVE":
            print("Cancelled. No motion command was sent.")
            return 1

    # Synchronise the target with the actual current pose before moving.
    print("Synchronising equilibrium target with current pose...")
    publish_pose_for_duration(
        publisher,
        start_position,
        start_quaternion,
        duration=2.0,
        frequency=args.rate,
    )

    start_time = rospy.Time.now()
    rate = rospy.Rate(args.rate)
    next_report_time = 0.0

    while not rospy.is_shutdown():
        elapsed = (rospy.Time.now() - start_time).to_sec()

        if elapsed >= duration:
            break

        u = elapsed / duration
        s = smoothstep5(u)

        command_position = (
            start_position
            + s * (target_position - start_position)
        )

        command_quaternion = quaternion_slerp(
            start_quaternion,
            target_quaternion,
            s,
        )
        command_quaternion = normalise_quaternion(
            np.asarray(command_quaternion, dtype=float)
        )

        publisher.publish(
            make_pose_message(
                command_position,
                command_quaternion,
            )
        )

        if elapsed >= next_report_time:
            actual_position, actual_quaternion = get_current_pose()

            actual_translation_error = float(
                np.linalg.norm(command_position - actual_position)
            )

            actual_rotation_error = quaternion_angle(
                actual_quaternion,
                command_quaternion,
            )

            print(
                f"t={elapsed:6.1f}/{duration:.1f}s | "
                f"progress={100.0 * s:5.1f}% | "
                f"tracking error="
                f"{1000.0 * actual_translation_error:6.1f} mm, "
                f"{math.degrees(actual_rotation_error):5.1f} deg"
            )

            next_report_time += 1.0

        rate.sleep()

    print("Interpolation completed. Holding final equilibrium target...")

    publish_pose_for_duration(
        publisher,
        target_position,
        target_quaternion,
        duration=args.hold_seconds,
        frequency=args.rate,
    )

    actual_position, actual_quaternion = get_current_pose()

    final_translation_error = float(
        np.linalg.norm(target_position - actual_position)
    )

    final_rotation_error = quaternion_angle(
        actual_quaternion,
        target_quaternion,
    )

    print("")
    print("Final actual XYZ:")
    print(
        f"  {actual_position[0]: .6f} "
        f"{actual_position[1]: .6f} "
        f"{actual_position[2]: .6f}"
    )
    print(
        f"Final position error: "
        f"{final_translation_error * 1000.0:.2f} mm"
    )
    print(
        f"Final rotation error: "
        f"{math.degrees(final_rotation_error):.2f} deg"
    )
    print("")
    print(
        "The impedance controller retains the final equilibrium target "
        "after this node exits."
    )

    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except rospy.ROSInterruptException:
        pass
    except Exception as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        sys.exit(1)
