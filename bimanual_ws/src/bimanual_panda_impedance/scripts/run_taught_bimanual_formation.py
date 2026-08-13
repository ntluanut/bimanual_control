#!/usr/bin/env python3
import argparse
import math
import os
import time

import numpy as np
import rospy
import tf2_ros
import tf.transformations as tft
import yaml
from geometry_msgs.msg import PoseStamped


def pose_dict_to_matrix(p):
    xyz = p["position"]
    q = p["orientation"]
    T = tft.quaternion_matrix([q["x"], q["y"], q["z"], q["w"]])
    T[:3, 3] = [xyz["x"], xyz["y"], xyz["z"]]
    return T


def transform_to_matrix(msg):
    t = msg.transform.translation
    q = msg.transform.rotation
    T = tft.quaternion_matrix([q.x, q.y, q.z, q.w])
    T[:3, 3] = [t.x, t.y, t.z]
    return T


def matrix_to_pose_stamped(T, frame_id):
    q = tft.quaternion_from_matrix(T)
    m = PoseStamped()
    m.header.stamp = rospy.Time.now()
    m.header.frame_id = frame_id
    m.pose.position.x, m.pose.position.y, m.pose.position.z = map(float, T[:3, 3])
    m.pose.orientation.x = float(q[0])
    m.pose.orientation.y = float(q[1])
    m.pose.orientation.z = float(q[2])
    m.pose.orientation.w = float(q[3])
    return m


def rotation_error(Ta, Tb):
    R = Ta[:3, :3].T.dot(Tb[:3, :3])
    c = np.clip((np.trace(R) - 1.0) / 2.0, -1.0, 1.0)
    return math.acos(c)


def smoothstep5(s):
    s = max(0.0, min(1.0, s))
    return 10*s**3 - 15*s**4 + 6*s**5


def interpolate(T0, T1, u):
    q0 = tft.quaternion_from_matrix(T0)
    q1 = tft.quaternion_from_matrix(T1)
    q = tft.quaternion_slerp(q0, q1, u)
    T = tft.quaternion_matrix(q)
    T[:3, 3] = (1-u)*T0[:3, 3] + u*T1[:3, 3]
    return T


def duration_for(T0, T1, v, w):
    d = np.linalg.norm(T1[:3, 3] - T0[:3, 3])
    a = rotation_error(T0, T1)
    return max(1.0, d/max(v, 1e-6), a/max(w, 1e-6))


class Demo:
    def __init__(self, a, formation):
        self.a = a
        self.f = formation
        self.tf = tf2_ros.Buffer(cache_time=rospy.Duration(5.0))
        self.listener = tf2_ros.TransformListener(self.tf)
        self.left_pub = rospy.Publisher(a.left_target_topic, PoseStamped, queue_size=1)
        self.right_pub = rospy.Publisher(a.right_target_topic, PoseStamped, queue_size=1)
        self.rate = rospy.Rate(a.rate)

        self.T_ref_left_taught = pose_dict_to_matrix(
            formation["left"]["pose_in_reference"])
        self.T_ref_right_taught = pose_dict_to_matrix(
            formation["right"]["pose_in_reference"])
        self.T_left_right = np.array(
            formation["relative"]["T_left_right_row_major"], dtype=float).reshape(4, 4)

    def lookup(self, target, source, timeout=5.0):
        return transform_to_matrix(
            self.tf.lookup_transform(target, source, rospy.Time(0), rospy.Duration(timeout))
        )

    def current_left(self):
        return self.lookup(self.a.reference_frame, self.a.left_ee_frame)

    def current_right(self):
        return self.lookup(self.a.reference_frame, self.a.right_ee_frame)

    def ref_target_to_base(self, T_ref_target, base_frame):
        T_ref_base = self.lookup(self.a.reference_frame, base_frame)
        return np.linalg.inv(T_ref_base).dot(T_ref_target)

    def publish_pair(self, T_ref_left, T_ref_right):
        Tl = self.ref_target_to_base(T_ref_left, self.a.left_base_frame)
        Tr = self.ref_target_to_base(T_ref_right, self.a.right_base_frame)
        self.left_pub.publish(matrix_to_pose_stamped(Tl, self.a.left_base_frame))
        self.right_pub.publish(matrix_to_pose_stamped(Tr, self.a.right_base_frame))

    def wait_subscribers(self):
        deadline = time.time() + 10.0
        while not rospy.is_shutdown() and time.time() < deadline:
            if self.left_pub.get_num_connections() and self.right_pub.get_num_connections():
                rospy.loginfo("Independent left/right controller topics connected.")
                return
            rospy.sleep(0.1)
        raise RuntimeError(
            "left_target_pose/right_target_pose subscribers are missing. "
            "Patch/rebuild/restart the controller first."
        )

    def move_both(self):
        L0 = self.current_left()
        R0 = self.current_right()
        T = max(
            duration_for(L0, self.T_ref_left_taught,
                         self.a.linear_speed, self.a.angular_speed),
            duration_for(R0, self.T_ref_right_taught,
                         self.a.linear_speed, self.a.angular_speed)
        )
        rospy.loginfo("STAGE 1+2: both arms start together. Duration %.2f s", T)
        t0 = rospy.Time.now().to_sec()

        while not rospy.is_shutdown():
            elapsed = rospy.Time.now().to_sec() - t0
            u = smoothstep5(elapsed / T)
            self.publish_pair(
                interpolate(L0, self.T_ref_left_taught, u),
                interpolate(R0, self.T_ref_right_taught, u))
            if elapsed >= T:
                break
            self.rate.sleep()

    def wait_left(self):
        rospy.loginfo(
            "STAGE 3: waiting for left measured EE to settle."
        )
        rospy.loginfo(
            "Acceptance: position <= %.1f mm | rotation <= %.1f deg | settle %.2f s",
            self.a.pos_tol * 1000.0,
            self.a.rot_tol_deg,
            self.a.settle_time
        )

        stable = None
        last_print = 0.0

        while not rospy.is_shutdown():
            L = self.current_left()

            # Translation error vector in common reference frame.
            xyz_error = (
                L[:3, 3] -
                self.T_ref_left_taught[:3, 3]
            )

            pos_error = np.linalg.norm(xyz_error)

            rot_error = rotation_error(
                L,
                self.T_ref_left_taught
            )

            rot_error_deg = math.degrees(rot_error)

            # Keep both equilibrium targets at their taught poses
            # while checking convergence.
            self.publish_pair(
                self.T_ref_left_taught,
                self.T_ref_right_taught
            )

            now = rospy.Time.now().to_sec()

            # Print live error once per second.
            if now - last_print >= 1.0:
                rospy.loginfo(
                    "LEFT ERROR | "
                    "dXYZ=[%+.1f, %+.1f, %+.1f] mm | "
                    "pos=%.1f mm | rot=%.2f deg | "
                    "limits=[%.1f mm, %.1f deg]",
                    xyz_error[0] * 1000.0,
                    xyz_error[1] * 1000.0,
                    xyz_error[2] * 1000.0,
                    pos_error * 1000.0,
                    rot_error_deg,
                    self.a.pos_tol * 1000.0,
                    self.a.rot_tol_deg
                )

                last_print = now

            position_ok = (
                pos_error <= self.a.pos_tol
            )

            rotation_ok = (
                rot_error <= math.radians(
                    self.a.rot_tol_deg
                )
            )

            if position_ok and rotation_ok:

                if stable is None:
                    stable = now

                    rospy.loginfo(
                        "LEFT inside tolerance; "
                        "starting %.2f s settle timer.",
                        self.a.settle_time
                    )

                elif now - stable >= self.a.settle_time:

                    rospy.loginfo(
                        "LEFT_READY | "
                        "dXYZ=[%+.1f, %+.1f, %+.1f] mm | "
                        "pos=%.1f mm | rot=%.2f deg",
                        xyz_error[0] * 1000.0,
                        xyz_error[1] * 1000.0,
                        xyz_error[2] * 1000.0,
                        pos_error * 1000.0,
                        rot_error_deg
                    )

                    return

            else:
                # If it leaves tolerance during settling,
                # restart the settle timer.
                stable = None

            self.rate.sleep()

    def enter_tracking(self):
        R0 = self.current_right()
        L = self.current_left()
        R1 = L.dot(self.T_left_right)
        T = duration_for(R0, R1,
                         self.a.track_linear_speed,
                         self.a.track_angular_speed)
        rospy.loginfo("STAGE 4: smooth transition to live relative tracking.")
        t0 = rospy.Time.now().to_sec()

        while not rospy.is_shutdown():
            elapsed = rospy.Time.now().to_sec() - t0
            u = smoothstep5(elapsed / T)
            L = self.current_left()
            R_live = L.dot(self.T_left_right)
            self.publish_pair(
                self.T_ref_left_taught,
                interpolate(R0, R_live, u))
            if elapsed >= T:
                return
            self.rate.sleep()

    def track(self):
        rospy.loginfo("STAGE 5: RIGHT follows current LEFT with taught T_left_right.")
        rospy.loginfo("Ctrl-C stops the coordinator.")
        last_R = self.current_right()
        last_t = rospy.Time.now().to_sec()

        while not rospy.is_shutdown():
            now = rospy.Time.now().to_sec()
            dt = max(1e-3, now - last_t)

            L = self.current_left()
            R_des = L.dot(self.T_left_right)

            # Limit translational target motion.
            dp = R_des[:3, 3] - last_R[:3, 3]
            max_dp = self.a.track_linear_speed * dt
            n = np.linalg.norm(dp)
            if n > max_dp > 0:
                R_des[:3, 3] = last_R[:3, 3] + dp * (max_dp / n)

            # Limit rotational target motion.
            da = rotation_error(last_R, R_des)
            max_da = self.a.track_angular_speed * dt
            if da > max_da > 0:
                R_des = interpolate(last_R, R_des, max_da / da)

            # Left holds the recorded absolute equilibrium.
            self.publish_pair(self.T_ref_left_taught, R_des)

            last_R = R_des
            last_t = now
            self.rate.sleep()

    def run(self):
        self.wait_subscribers()
        sep = self.f["relative"]["straight_line_distance_m"] * 1000.0
        print("\n" + "="*72)
        print(" BIMANUAL TAUGHT-RELATIVE DEMO")
        print("="*72)
        print(f"Recorded EE separation: {sep:.1f} mm")
        print("LEFT  = panda_2")
        print("RIGHT = panda_1")
        print("1+2: both move immediately to their recorded poses")
        print("3:   verify measured left arrival")
        print("4:   smooth follower engagement")
        print("5:   right_des = left_current @ taught_relative_transform")
        print("="*72)

        if input("\nType RUN_BIMANUAL to move the real robots: ").strip() != "RUN_BIMANUAL":
            print("Cancelled.")
            return

        self.move_both()
        self.wait_left()
        self.enter_tracking()
        self.track()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("yaml_file")
    ap.add_argument("--pose-name", required=True)
    ap.add_argument("--reference-frame", default="panda_2_link0")
    ap.add_argument("--left-base-frame", default="panda_2_link0")
    ap.add_argument("--right-base-frame", default="panda_1_link0")
    ap.add_argument("--left-ee-frame", default="panda_2_EE")
    ap.add_argument("--right-ee-frame", default="panda_1_EE")
    ap.add_argument("--left-target-topic",
        default="/panda_dual/dual_arm_cartesian_impedance_example_controller/left_target_pose")
    ap.add_argument("--right-target-topic",
        default="/panda_dual/dual_arm_cartesian_impedance_example_controller/right_target_pose")
    ap.add_argument("--rate", type=float, default=100.0)
    ap.add_argument("--linear-speed", type=float, default=0.020)
    ap.add_argument("--angular-speed", type=float, default=0.15)
    ap.add_argument("--track-linear-speed", type=float, default=0.020)
    ap.add_argument("--track-angular-speed", type=float, default=0.15)
    ap.add_argument("--pos-tol", type=float, default=0.050)
    ap.add_argument("--rot-tol-deg", type=float, default=8.0)
    ap.add_argument("--settle-time", type=float, default=0.5)
    args = ap.parse_args(rospy.myargv()[1:])

    rospy.init_node("run_taught_bimanual_formation")
    path = os.path.abspath(os.path.expanduser(args.yaml_file))
    with open(path, "r") as f:
        data = yaml.safe_load(f)
    formation = data.get("formations", {}).get(args.pose_name)
    if formation is None:
        raise RuntimeError(f"Pose '{args.pose_name}' not found in {path}")

    Demo(args, formation).run()


if __name__ == "__main__":
    main()
