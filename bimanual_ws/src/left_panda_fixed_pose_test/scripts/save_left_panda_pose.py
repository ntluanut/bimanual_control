#!/usr/bin/env python3

"""
Save the current Cartesian end-effector pose of the left Panda.

The pose is read from:

    /franka_state_controller/franka_states

and saved to a YAML file using a structure compatible with the
saved-pose Cartesian impedance motion script.

Important:
    This version is intended for testing one Panda at a time.
    The running robot therefore still uses the standard ROS arm_id "panda".
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


def read_current_pose(
    state_topic: str,
    timeout: float,
) -> Dict[str, Any]:
    """Read O_T_EE and return position and quaternion orientation."""

    rospy.loginfo("Waiting for Franka state on %s...", state_topic)

    state = rospy.wait_for_message(
        state_topic,
        FrankaState,
        timeout=timeout,
    )

    # Franka matrices are stored column-major.
    transform = np.asarray(
        state.O_T_EE,
        dtype=float,
    ).reshape((4, 4), order="F")

    quaternion = quaternion_from_matrix(transform)

    return {
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


def load_existing_yaml(path: str) -> Dict[str, Any]:
    """Load an existing YAML file or create an empty structure."""

    if not os.path.exists(path):
        return {}

    with open(path, "r", encoding="utf-8") as file:
        loaded = yaml.safe_load(file)

    if loaded is None:
        return {}

    if not isinstance(loaded, dict):
        raise ValueError(
            f"Existing YAML root must be a dictionary: {path}"
        )

    return loaded


def save_pose(
    path: str,
    pose_name: str,
    pose: Dict[str, Any],
) -> None:
    """Save or update one named left-Panda pose."""

    document = load_existing_yaml(path)

    # Frame name documents the physical robot.
    # During single-arm execution, this is mapped to panda_link0.
    document["frame_id"] = "panda_left_link0"
    document["robot"] = "panda_left"
    document["last_updated"] = datetime.now().isoformat(timespec="seconds")

    poses = document.setdefault("poses", {})

    if not isinstance(poses, dict):
        raise ValueError(
            "The YAML 'poses' entry exists but is not a dictionary."
        )

    poses[pose_name] = pose

    parent_directory = os.path.dirname(os.path.abspath(path))
    os.makedirs(parent_directory, exist_ok=True)

    temporary_path = path + ".tmp"

    with open(temporary_path, "w", encoding="utf-8") as file:
        yaml.safe_dump(
            document,
            file,
            default_flow_style=False,
            sort_keys=False,
        )

    os.replace(temporary_path, path)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Save the current left-Panda Cartesian pose."
    )

    parser.add_argument(
        "yaml_file",
        help="Output YAML file.",
    )

    parser.add_argument(
        "--pose-name",
        required=True,
        help="Name assigned to the taught pose.",
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
        help="Maximum state-message wait time in seconds.",
    )

    args = parser.parse_args()

    rospy.init_node(
        "save_left_panda_pose",
        anonymous=True,
    )

    try:
        pose = read_current_pose(
            args.state_topic,
            args.timeout,
        )
    except rospy.ROSException as error:
        rospy.logerr("Could not read Franka state: %s", error)
        return 1

    print()
    print("=" * 58)
    print(" LEFT PANDA TAUGHT POSE")
    print("=" * 58)
    print(f"Pose name: {args.pose_name}")
    print("Saved frame: panda_left_link0")
    print()
    print(
        "Position: "
        f"{pose['position']['x']:.6f} "
        f"{pose['position']['y']:.6f} "
        f"{pose['position']['z']:.6f}"
    )
    print(
        "Quaternion: "
        f"{pose['orientation']['x']:.8f} "
        f"{pose['orientation']['y']:.8f} "
        f"{pose['orientation']['z']:.8f} "
        f"{pose['orientation']['w']:.8f}"
    )
    print("=" * 58)
    print()

    confirmation = input(
        f"Save this pose as '{args.pose_name}'? Type SAVE: "
    ).strip()

    if confirmation != "SAVE":
        print("Pose not saved.")
        return 0

    try:
        save_pose(
            os.path.abspath(os.path.expanduser(args.yaml_file)),
            args.pose_name,
            pose,
        )
    except (OSError, ValueError, yaml.YAMLError) as error:
        rospy.logerr("Could not save pose: %s", error)
        return 1

    print()
    print(f"Saved to: {os.path.abspath(os.path.expanduser(args.yaml_file))}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
