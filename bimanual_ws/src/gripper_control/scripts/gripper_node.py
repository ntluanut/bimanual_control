#!/usr/bin/env python3
import rospy
import actionlib
from std_srvs.srv import Trigger, TriggerResponse
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
from trajectory_msgs.msg import JointTrajectoryPoint


class GripperController:
    def __init__(self, arm_name):
        self.name = arm_name

        ctrl = rospy.get_param("~hand_controller")
        self.open_pos = rospy.get_param(f"{ctrl}/open_pos")
        self.close_pos = rospy.get_param(f"{ctrl}/close_pos")
        self.joint_names = rospy.get_param(f"{ctrl}/joints")

        self.client = actionlib.SimpleActionClient(
            f"{ctrl}/follow_joint_trajectory", FollowJointTrajectoryAction)
        if not self.client.wait_for_server(rospy.Duration(30.0)):
            rospy.logwarn("hand controller action server not available")

        rospy.Service(f"/{self.name}/gripper/open", Trigger, self.open_gripper)
        rospy.Service(f"/{self.name}/gripper/close", Trigger, self.close_gripper)
        rospy.loginfo("[%s] gripper services ready", self.name)

    def open_gripper(self, req):
        ok = self._move("open")
        return TriggerResponse(success=ok, message="opened" if ok else "failed")

    def close_gripper(self, req):
        ok = self._move("close")
        return TriggerResponse(success=ok, message="closed" if ok else "failed")

    def _move(self, position):
        goal = FollowJointTrajectoryGoal()
        goal.trajectory.joint_names = self.joint_names

        point = JointTrajectoryPoint()
        if position == "open":
            point.positions = self.open_pos
        else:
            point.positions = self.close_pos
        point.time_from_start = rospy.Duration(4.0)
        goal.trajectory.points.append(point)

        self.client.send_goal(goal)
        if not self.client.wait_for_result(rospy.Duration(10.0)):
            rospy.logerr("timeout waiting for result (sim paused?)")
            self.client.cancel_goal()
            return False
        res = self.client.get_result()
        if res.error_code != 0:
            rospy.logerr("goal failed: code=%d msg=%s", res.error_code, res.error_string)
        return res.error_code == 0


if __name__ == "__main__":
    rospy.init_node("left_gripper_node")
    GripperController(rospy.get_param("~arm_name"))
    rospy.spin()
