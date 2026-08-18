#!/usr/bin/env python3

"""
Save the current centering frame published by the provided
DualArmCartesianImpedanceExampleController.

The dual-arm controller commands one centre frame and preserves the
relative transform between the two end effectors established when the
controller starts.
"""

import argparse
import os
import sys
from datetime import datetime
from typing import Any, Dict

import rospy
import yaml

from geometry_msgs.msg import PoseStamped


DEFAULT_CENTER_TOPIC = (
    "/dual_arm_cartesian_impedance_example_controller/centering_frame"
)


def load_document(path: str) -> Dict[str, Any]:
    """Load an existing YAML document or create a new one."""

    if not os.path.exists(path):
        return {
            "controller": "DualArmCartesianImpedanceExampleController",
            "left_arm_id": "panda_left",
            "right_arm_id": "panda_right",
            "poses": {},
        }

    with open(path, "r", encoding="utf-8") as stream:
        document = yaml.safe_load(stream)

    if document is None:
        document = {}

    if not isinstance(document, dict):
        raise ValueError("YAML root must be a dictionary.")

    poses = document.setdefault("poses", {})

    if not isinstance(poses, dict):
        raise ValueError("YAML 'poses' entry must be a dictionary.")

    return document


def pose_message_to_dict(message: PoseStamped) -> Dict[str, Any]:
    """Convert a PoseStamped message into a YAML-compatible dictionary."""

    return {
        "frame_id": message.header.frame_id,
        "position": {
            "x": float(message.pose.position.x),
            "y": float(message.pose.position.y),
            "z": float(message.pose.position.z),
        },
        "orientation": {
            "x": float(message.pose.orientation.x),
            "y": float(message.pose.orientation.y),
            "z": float(message.pose.orientation.z),
            "w": float(message.pose.orientation.w),
        },
    }


def save_pose(
    yaml_path: str,
    pose_name: str,
    pose: Dict[str, Any],
) -> None:
    """Save or replace one named centre-frame pose."""

    document = load_document(yaml_path)

    document["controller"] = (
        "DualArmCartesianImpedanceExampleController"
    )
    document["left_arm_id"] = "panda_left"
    document["right_arm_id"] = "panda_right"
    document["last_updated"] = datetime.now().isoformat(
        timespec="seconds"
    )

    document["poses"][pose_name] = pose

    parent = os.path.dirname(os.path.abspath(yaml_path))
    os.makedirs(parent, exist_ok=True)

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
        description="Record a taught dual-arm centering-frame pose."
    )

    parser.add_argument(
        "yaml_file",
        help="Output YAML file.",
    )

    parser.add_argument(
        "--pose-name",
        required=True,
        help="Name assigned to this centre-frame pose.",
    )

    parser.add_argument(
        "--center-topic",
        default=DEFAULT_CENTER_TOPIC,
        help="Published dual-arm centering-frame topic.",
    )

    parser.add_argument(
        "--timeout",
        type=float,
        default=10.0,
        help="Message timeout in seconds.",
    )

    parser.add_argument(
        "--yes",
        action="store_true",
        help="Save without confirmation.",
    )

    args = parser.parse_args(rospy.myargv(argv=sys.argv)[1:])

    yaml_path = os.path.abspath(
        os.path.expanduser(args.yaml_file)
    )

    rospy.init_node(
        "save_dual_center_pose",
        anonymous=False,
    )

    rospy.loginfo(
        "Waiting for dual-arm centre frame on %s...",
        args.center_topic,
    )

    message = rospy.wait_for_message(
        args.center_topic,
        PoseStamped,
        timeout=args.timeout,
    )

    pose = pose_message_to_dict(message)

    p = pose["position"]
    q = pose["orientation"]

    print("")
    print("==========================================================")
    print(" DUAL-PANDA TAUGHT CENTER POSE")
    print("==========================================================")
    print(f"Pose name:   {args.pose_name}")
    print(f"Frame:       {pose['frame_id']}")
    print("")
    print(
        "Position XYZ: "
        f"{p['x']: .6f} "
        f"{p['y']: .6f} "
        f"{p['z']: .6f}"
    )
    print(
        "Quaternion:   "
        f"{q['x']: .8f} "
        f"{q['y']: .8f} "
        f"{q['z']: .8f} "
        f"{q['w']: .8f}"
    )
    print("==========================================================")
    print("")

    if not args.yes:
        answer = input(
            f"Save this centre pose as '{args.pose_name}'? "
            "Type SAVE to continue: "
        ).strip()

        if answer != "SAVE":
            print("Cancelled. Pose was not saved.")
            return 1

    save_pose(
        yaml_path=yaml_path,
        pose_name=args.pose_name,
        pose=pose,
    )

    print("")
    print(f"Saved to: {yaml_path}")
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
