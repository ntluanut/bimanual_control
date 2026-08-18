#!/usr/bin/env python3

"""
Move the provided dual-arm Cartesian impedance controller smoothly to a
saved centering-frame pose.

The controller receives one PoseStamped target and automatically computes
both end-effector targets while preserving the initial relative transform
between the two end effectors.
"""

import argparse
import math
import sys
from typing import Any, Dict, Optional, Tuple

import numpy as np
import rospy
import yaml

from geometry_msgs.msg import PoseStamped
from tf.transformations import quaternion_slerp


DEFAULT_CENTER_TOPIC = (
    "/dual_arm_cartesian_impedance_example_controller/centering_frame"
)

DEFAULT_TARGET_TOPIC = (
    "/dual_arm_cartesian_impedance_example_controller/"
    "centering_frame_target_pose"
)


latest_center_pose: Optional[PoseStamped] = None


def center_callback(message: PoseStamped) -> None:
    global latest_center_pose
    latest_center_pose = message


def normalise_quaternion(quaternion: np.ndarray) -> np.ndarray:
    norm = float(np.linalg.norm(quaternion))

    if norm < 1.0e-10:
        raise ValueError("Quaternion has near-zero norm.")

    return quaternion / norm


def quaternion_angle(
    q0: np.ndarray,
    q1: np.ndarray,
) -> float:
    """Return the shortest angular distance between two quaternions."""

    q0 = normalise_quaternion(q0)
    q1 = normalise_quaternion(q1)

    dot = abs(float(np.dot(q0, q1)))
    dot = max(-1.0, min(1.0, dot))

    return 2.0 * math.acos(dot)


def smoothstep5(value: float) -> float:
    """Quintic interpolation with zero endpoint velocity/acceleration."""

    value = max(0.0, min(1.0, value))

    return (
        10.0 * value**3
        - 15.0 * value**4
        + 6.0 * value**5
    )


def pose_to_arrays(
    message: PoseStamped,
) -> Tuple[np.ndarray, np.ndarray, str]:
    position = np.array(
        [
            message.pose.position.x,
            message.pose.position.y,
            message.pose.position.z,
        ],
        dtype=float,
    )

    quaternion = np.array(
        [
            message.pose.orientation.x,
            message.pose.orientation.y,
            message.pose.orientation.z,
            message.pose.orientation.w,
        ],
        dtype=float,
    )

    return (
        position,
        normalise_quaternion(quaternion),
        message.header.frame_id,
    )


def find_named_pose(
    document: Any,
    pose_name: str,
) -> Dict[str, Any]:
    if not isinstance(document, dict):
        raise ValueError("YAML root must be a dictionary.")

    poses = document.get("poses")

    if not isinstance(poses, dict):
        raise ValueError("YAML has no valid 'poses' dictionary.")

    if pose_name not in poses:
        available = ", ".join(sorted(poses.keys()))

        raise KeyError(
            f"Pose '{pose_name}' was not found. "
            f"Available poses: {available}"
        )

    pose = poses[pose_name]

    if not isinstance(pose, dict):
        raise ValueError(
            f"Pose '{pose_name}' must be a dictionary."
        )

    return pose


def saved_pose_to_arrays(
    pose: Dict[str, Any],
) -> Tuple[np.ndarray, np.ndarray, str]:
    position_node = pose["position"]
    orientation_node = pose["orientation"]

    position = np.array(
        [
            float(position_node["x"]),
            float(position_node["y"]),
            float(position_node["z"]),
        ],
        dtype=float,
    )

    quaternion = np.array(
        [
            float(orientation_node["x"]),
            float(orientation_node["y"]),
            float(orientation_node["z"]),
            float(orientation_node["w"]),
        ],
        dtype=float,
    )

    frame_id = str(
        pose.get("frame_id", "panda_left_link0")
    )

    return (
        position,
        normalise_quaternion(quaternion),
        frame_id,
    )


def make_pose_message(
    position: np.ndarray,
    quaternion: np.ndarray,
    frame_id: str,
) -> PoseStamped:
    message = PoseStamped()

    message.header.stamp = rospy.Time.now()
    message.header.frame_id = frame_id

    message.pose.position.x = float(position[0])
    message.pose.position.y = float(position[1])
    message.pose.position.z = float(position[2])

    message.pose.orientation.x = float(quaternion[0])
    message.pose.orientation.y = float(quaternion[1])
    message.pose.orientation.z = float(quaternion[2])
    message.pose.orientation.w = float(quaternion[3])

    return message


def wait_for_center_pose(timeout: float) -> None:
    deadline = rospy.Time.now() + rospy.Duration(timeout)
    rate = rospy.Rate(20)

    while (
        not rospy.is_shutdown()
        and latest_center_pose is None
    ):
        if rospy.Time.now() > deadline:
            raise RuntimeError(
                "No current centering-frame pose was received."
            )

        rate.sleep()


def wait_for_target_subscriber(
    publisher: rospy.Publisher,
    timeout: float,
) -> None:
    deadline = rospy.Time.now() + rospy.Duration(timeout)
    rate = rospy.Rate(20)

    while (
        not rospy.is_shutdown()
        and publisher.get_num_connections() == 0
    ):
        if rospy.Time.now() > deadline:
            raise RuntimeError(
                "No controller subscriber connected to the "
                "centering-frame target topic."
            )

        rate.sleep()


def publish_for_duration(
    publisher: rospy.Publisher,
    position: np.ndarray,
    quaternion: np.ndarray,
    frame_id: str,
    duration: float,
    frequency: float,
) -> None:
    rate = rospy.Rate(frequency)
    end_time = rospy.Time.now() + rospy.Duration(duration)

    while (
        not rospy.is_shutdown()
        and rospy.Time.now() < end_time
    ):
        publisher.publish(
            make_pose_message(
                position,
                quaternion,
                frame_id,
            )
        )

        rate.sleep()


def main() -> int:
    parser = argparse.ArgumentParser(
        description=(
            "Move both Pandas through the provided dual-arm Cartesian "
            "impedance centering-frame controller."
        )
    )

    parser.add_argument(
        "yaml_file",
        help="Path to the saved dual centre-pose YAML file.",
    )

    parser.add_argument(
        "--pose-name",
        default="bottle_approach",
        help="Named centre-frame target.",
    )

    parser.add_argument(
        "--center-topic",
        default=DEFAULT_CENTER_TOPIC,
        help="Current centering-frame topic.",
    )

    parser.add_argument(
        "--target-topic",
        default=DEFAULT_TARGET_TOPIC,
        help="Controller centering-frame target topic.",
    )

    parser.add_argument(
        "--linear-speed",
        type=float,
        default=0.02,
        help="Maximum centre-frame linear target speed in m/s.",
    )

    parser.add_argument(
        "--angular-speed",
        type=float,
        default=0.10,
        help="Maximum centre-frame angular target speed in rad/s.",
    )

    parser.add_argument(
        "--minimum-duration",
        type=float,
        default=5.0,
        help="Minimum interpolation duration.",
    )

    parser.add_argument(
        "--hold-seconds",
        type=float,
        default=5.0,
        help="Final target publication duration.",
    )

    parser.add_argument(
        "--rate",
        type=float,
        default=100.0,
        help="Target publication frequency.",
    )

    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print the planned movement without publishing it.",
    )

    parser.add_argument(
        "--yes",
        action="store_true",
        help="Skip interactive confirmation.",
    )

    args = parser.parse_args(rospy.myargv(argv=sys.argv)[1:])

    if args.linear_speed <= 0.0:
        raise ValueError("--linear-speed must be positive.")

    if args.angular_speed <= 0.0:
        raise ValueError("--angular-speed must be positive.")

    if args.rate < 20.0:
        raise ValueError("--rate should be at least 20 Hz.")

    with open(args.yaml_file, "r", encoding="utf-8") as stream:
        document = yaml.safe_load(stream)

    saved_pose = find_named_pose(
        document,
        args.pose_name,
    )

    (
        target_position,
        target_quaternion,
        target_frame,
    ) = saved_pose_to_arrays(saved_pose)

    rospy.init_node(
        "move_dual_center_pose",
        anonymous=False,
    )

    rospy.Subscriber(
        args.center_topic,
        PoseStamped,
        center_callback,
        queue_size=1,
        tcp_nodelay=True,
    )

    publisher = rospy.Publisher(
        args.target_topic,
        PoseStamped,
        queue_size=1,
    )

    rospy.loginfo("Waiting for current dual-arm centre frame...")
    wait_for_center_pose(timeout=10.0)

    rospy.loginfo("Waiting for dual-arm controller subscriber...")
    wait_for_target_subscriber(
        publisher,
        timeout=10.0,
    )

    (
        start_position,
        start_quaternion,
        current_frame,
    ) = pose_to_arrays(latest_center_pose)

    if current_frame != target_frame:
        raise ValueError(
            f"Current centre frame is '{current_frame}', but the saved "
            f"target uses '{target_frame}'. No TF conversion is performed."
        )

    if float(
        np.dot(start_quaternion, target_quaternion)
    ) < 0.0:
        target_quaternion = -target_quaternion

    translation_distance = float(
        np.linalg.norm(
            target_position - start_position
        )
    )

    rotation_distance = quaternion_angle(
        start_quaternion,
        target_quaternion,
    )

    # Peak derivative of quintic smoothstep is 1.875.
    translation_duration = (
        1.875
        * translation_distance
        / args.linear_speed
    )

    rotation_duration = (
        1.875
        * rotation_distance
        / args.angular_speed
    )

    duration = max(
        args.minimum_duration,
        translation_duration,
        rotation_duration,
    )

    print("")
    print("==========================================================")
    print(" DUAL-PANDA CARTESIAN IMPEDANCE CENTER MOVE")
    print("==========================================================")
    print(f"YAML file:       {args.yaml_file}")
    print(f"Pose name:       {args.pose_name}")
    print(f"Reference frame: {target_frame}")
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
        f"Translation:     "
        f"{translation_distance * 1000.0:.1f} mm"
    )
    print(
        f"Rotation:        "
        f"{math.degrees(rotation_distance):.1f} deg"
    )
    print(f"Duration:        {duration:.1f} s")
    print(f"Linear limit:    {args.linear_speed:.4f} m/s")
    print(f"Angular limit:   {args.angular_speed:.4f} rad/s")
    print("==========================================================")
    print("")

    if args.dry_run:
        print("Dry run only. No command was published.")
        return 0

    if not args.yes:
        answer = input(
            "Both robot workspaces clear and emergency stop ready? "
            "Type MOVE_BOTH to continue: "
        ).strip()

        if answer != "MOVE_BOTH":
            print("Cancelled. No command was sent.")
            return 1

    print("Synchronising target with current centre frame...")

    publish_for_duration(
        publisher,
        start_position,
        start_quaternion,
        target_frame,
        duration=2.0,
        frequency=args.rate,
    )

    start_time = rospy.Time.now()
    rate = rospy.Rate(args.rate)
    next_report = 0.0

    while not rospy.is_shutdown():
        elapsed = (
            rospy.Time.now() - start_time
        ).to_sec()

        if elapsed >= duration:
            break

        interpolation = smoothstep5(
            elapsed / duration
        )

        command_position = (
            start_position
            + interpolation
            * (target_position - start_position)
        )

        command_quaternion = quaternion_slerp(
            start_quaternion,
            target_quaternion,
            interpolation,
        )

        command_quaternion = normalise_quaternion(
            np.asarray(
                command_quaternion,
                dtype=float,
            )
        )

        publisher.publish(
            make_pose_message(
                command_position,
                command_quaternion,
                target_frame,
            )
        )

        if elapsed >= next_report:
            print(
                f"t={elapsed:6.1f}/{duration:.1f}s | "
                f"progress={100.0 * interpolation:5.1f}%"
            )

            next_report += 1.0

        rate.sleep()

    print("Interpolation completed. Holding final target...")

    publish_for_duration(
        publisher,
        target_position,
        target_quaternion,
        target_frame,
        duration=args.hold_seconds,
        frequency=args.rate,
    )

    print("")
    print(
        "Final dual-arm centre target has been published."
    )
    print(
        "The controller maintains the starting relative transform "
        "between the two end effectors."
    )
    print("")

    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except rospy.ROSInterruptException:
        pass
    except Exception as exception:
        print(f"ERROR: {exception}", file=sys.stderr)
        sys.exit(1)
