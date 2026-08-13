#!/usr/bin/env python3

"""
Record the current Cartesian end-effector pose of the right Panda.

The current pose is obtained from FrankaState.O_T_EE and written to a
named entry in a YAML file.

This script is intended for the current single-Panda-at-a-time setup,
where the active robot uses the standard ROS names:

    /franka_state_controller/franka_states
    panda_link0
    panda_joint1 ... panda_joint7

The saved logical frame is panda_right_link0 so the file is clearly
identified as belonging to the physical right Panda.
"""

import argparse
import os
import sys
from datetime import datetime
from typing import Any, Dict

import numpy as np
import rospy
import yaml

from franka_msgs.msg import FrankaState
from tf.transformations import quaternion_from_matrix


DEFAULT_STATE_TOPIC = "/franka_state_controller/franka_states"


def normalise_quaternion(quaternion: np.ndarray) -> np.ndarray:
    """Return a unit quaternion."""

    norm = float(np.linalg.norm(quaternion))

    if norm < 1.0e-10:
        raise ValueError("Quaternion has a near-zero norm.")

    return quaternion / norm


def read_current_pose(
    state_topic: str,
    timeout: float,
) -> Dict[str, Any]:
    """Wait for one FrankaState message and extract O_T_EE."""

    rospy.loginfo("Waiting for Franka state on %s...", state_topic)

    state = rospy.wait_for_message(
        state_topic,
        FrankaState,
        timeout=timeout,
    )

    # Franka stores homogeneous transforms in column-major order.
    transform = np.asarray(
        state.O_T_EE,
        dtype=float,
    ).reshape((4, 4), order="F")

    quaternion = quaternion_from_matrix(transform)
    quaternion = normalise_quaternion(
        np.asarray(quaternion, dtype=float)
    )

    return {
        "frame_id": "panda_right_link0",
        "position": {
            "x": float(transform[0, 3]),
            "y": float(transform[1, 3]),
            "z": float(transform[2, 3]),
        },
        "orientation": {
            "x": float(quaternion[0]),
            "y": float(quaternion[1]),
            "z": float(quaternion[2]),
            "w": float(quaternion[3]),
        },
    }


def load_yaml_document(path: str) -> Dict[str, Any]:
    """Read an existing YAML document or return an empty document."""

    if not os.path.exists(path):
        return {
            "robot": "panda_right",
            "description": "Taught Cartesian poses for the right Panda",
            "poses": {},
        }

    with open(path, "r", encoding="utf-8") as stream:
        document = yaml.safe_load(stream)

    if document is None:
        document = {}

    if not isinstance(document, dict):
        raise ValueError("The YAML root must be a dictionary.")

    if "poses" not in document:
        document["poses"] = {}

    if not isinstance(document["poses"], dict):
        raise ValueError("The YAML 'poses' entry must be a dictionary.")

    document["robot"] = "panda_right"

    return document


def save_named_pose(
    yaml_path: str,
    pose_name: str,
    pose: Dict[str, Any],
) -> None:
    """Add or replace one named pose using an atomic file replacement."""

    document = load_yaml_document(yaml_path)

    document["last_updated"] = datetime.now().isoformat(
        timespec="seconds"
    )

    document["poses"][pose_name] = pose

    directory = os.path.dirname(os.path.abspath(yaml_path))
    os.makedirs(directory, exist_ok=True)

    temporary_path = yaml_path + ".tmp"

    with open(temporary_path, "w", encoding="utf-8") as stream:
        yaml.safe_dump(
            document,
            stream,
            default_flow_style=False,
            sort_keys=False,
        )

    os.replace(temporary_path, yaml_path)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Record a taught Cartesian pose for the right Panda."
    )

    parser.add_argument(
        "yaml_file",
        help="Output YAML file.",
    )

    parser.add_argument(
        "--pose-name",
        required=True,
        help="Name assigned to the recorded pose.",
    )

    parser.add_argument(
        "--state-topic",
        default=DEFAULT_STATE_TOPIC,
        help="FrankaState topic.",
    )

    parser.add_argument(
        "--timeout",
        type=float,
        default=10.0,
        help="State-message timeout in seconds.",
    )

    parser.add_argument(
        "--yes",
        action="store_true",
        help="Save without asking for confirmation.",
    )

    args = parser.parse_args(rospy.myargv(argv=sys.argv)[1:])

    yaml_path = os.path.abspath(
        os.path.expanduser(args.yaml_file)
    )

    rospy.init_node(
        "save_right_panda_pose",
        anonymous=False,
    )

    pose = read_current_pose(
        state_topic=args.state_topic,
        timeout=args.timeout,
    )

    position = pose["position"]
    orientation = pose["orientation"]

    print("")
    print("==========================================================")
    print(" RIGHT PANDA TAUGHT POSE")
    print("==========================================================")
    print(f"Pose name:   {args.pose_name}")
    print(f"Saved frame: {pose['frame_id']}")
    print("")
    print(
        "Position XYZ: "
        f"{position['x']: .6f} "
        f"{position['y']: .6f} "
        f"{position['z']: .6f}"
    )
    print(
        "Quaternion:   "
        f"{orientation['x']: .8f} "
        f"{orientation['y']: .8f} "
        f"{orientation['z']: .8f} "
        f"{orientation['w']: .8f}"
    )
    print("==========================================================")
    print("")

    if not args.yes:
        answer = input(
            f"Save this pose as '{args.pose_name}'? "
            "Type SAVE to continue: "
        ).strip()

        if answer != "SAVE":
            print("Cancelled. Pose was not saved.")
            return 1

    save_named_pose(
        yaml_path=yaml_path,
        pose_name=args.pose_name,
        pose=pose,
    )

    print("")
    print(f"Pose saved to: {yaml_path}")
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
