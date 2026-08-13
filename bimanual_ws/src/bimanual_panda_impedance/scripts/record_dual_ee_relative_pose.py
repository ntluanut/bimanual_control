#!/usr/bin/env python3
import argparse
import math
import os
from datetime import datetime

import numpy as np
import rospy
import tf2_ros
import tf.transformations as tft
import yaml


def transform_to_matrix(msg):
    t = msg.transform.translation
    q = msg.transform.rotation
    T = tft.quaternion_matrix([q.x, q.y, q.z, q.w])
    T[:3, 3] = [t.x, t.y, t.z]
    return T


def matrix_to_pose_dict(T):
    q = tft.quaternion_from_matrix(T)
    return {
        "position": {"x": float(T[0,3]), "y": float(T[1,3]), "z": float(T[2,3])},
        "orientation": {"x": float(q[0]), "y": float(q[1]), "z": float(q[2]), "w": float(q[3])},
    }


def rotation_angle_deg(R):
    c = np.clip((np.trace(R)-1.0)/2.0, -1.0, 1.0)
    return math.degrees(math.acos(c))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("yaml_file")
    ap.add_argument("--pose-name", required=True)
    ap.add_argument("--reference-frame", default="panda_2_link0")
    ap.add_argument("--left-ee-frame", default="panda_2_EE")
    ap.add_argument("--right-ee-frame", default="panda_1_EE")
    ap.add_argument("--expected-distance", type=float, default=0.180)
    args = ap.parse_args(rospy.myargv()[1:])

    rospy.init_node("record_dual_ee_relative_pose")
    buf = tf2_ros.Buffer(cache_time=rospy.Duration(5.0))
    _listener = tf2_ros.TransformListener(buf)

    rospy.loginfo("Reading current left/right EE poses...")
    try:
        L = buf.lookup_transform(args.reference_frame, args.left_ee_frame,
                                 rospy.Time(0), rospy.Duration(10.0))
        R = buf.lookup_transform(args.reference_frame, args.right_ee_frame,
                                 rospy.Time(0), rospy.Duration(10.0))
    except Exception as e:
        rospy.logfatal("TF lookup failed: %s", e)
        raise SystemExit(2)

    T_ref_left = transform_to_matrix(L)
    T_ref_right = transform_to_matrix(R)
    T_left_right = np.linalg.inv(T_ref_left).dot(T_ref_right)

    dist = float(np.linalg.norm(T_ref_right[:3,3] - T_ref_left[:3,3]))
    rel_t = T_left_right[:3,3]
    rel_rot_deg = rotation_angle_deg(T_left_right[:3,:3])

    print("\n" + "="*70)
    print(" RECORD CURRENT BIMANUAL EE FORMATION")
    print("="*70)
    print(f"Reference frame:       {args.reference_frame}")
    print(f"LEFT EE:               {args.left_ee_frame}")
    print(f"RIGHT EE:              {args.right_ee_frame}")
    print(f"Straight EE distance:  {dist*1000.0:.1f} mm")
    print(f"Nominal expected:      {args.expected_distance*1000.0:.1f} mm")
    print("Right translation expressed in LEFT EE frame [m]:")
    print("  {:.6f}  {:.6f}  {:.6f}".format(*rel_t))
    print(f"Relative rotation:     {rel_rot_deg:.2f} deg")
    print()
    print("No 180-mm/collinearity constraint is imposed.")
    print("The exact taught 6-DoF relative transform will be preserved.")
    print("="*70)

    if input(f"\nType RECORD_BOTH to save '{args.pose_name}': ").strip() != "RECORD_BOTH":
        print("Cancelled.")
        return

    path = os.path.abspath(os.path.expanduser(args.yaml_file))
    os.makedirs(os.path.dirname(path), exist_ok=True)
    if os.path.exists(path):
        with open(path, "r") as f:
            data = yaml.safe_load(f) or {}
    else:
        data = {}

    data.setdefault("format_version", 1)
    data.setdefault("formations", {})
    data["formations"][args.pose_name] = {
        "recorded_at": datetime.now().isoformat(timespec="seconds"),
        "reference_frame": args.reference_frame,
        "left": {
            "arm_id": "panda_2",
            "base_frame": "panda_2_link0",
            "ee_frame": args.left_ee_frame,
            "pose_in_reference": matrix_to_pose_dict(T_ref_left),
        },
        "right": {
            "arm_id": "panda_1",
            "base_frame": "panda_1_link0",
            "ee_frame": args.right_ee_frame,
            "pose_in_reference": matrix_to_pose_dict(T_ref_right),
        },
        "relative": {
            "T_left_right_row_major": [float(x) for x in T_left_right.reshape(-1)],
            "straight_line_distance_m": dist,
            "nominal_expected_distance_m": float(args.expected_distance),
            "translation_in_left_frame_m": [float(x) for x in rel_t],
            "relative_rotation_deg": float(rel_rot_deg),
        },
    }

    tmp = path + ".tmp"
    with open(tmp, "w") as f:
        yaml.safe_dump(data, f, sort_keys=False, default_flow_style=False)
    os.replace(tmp, path)

    print(f"\nSaved:\n  {path}")
    print("\nRuntime relation:")
    print("  T_ref_right_desired = T_ref_left_current @ T_left_right_taught")


if __name__ == "__main__":
    main()
