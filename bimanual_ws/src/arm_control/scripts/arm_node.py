#!/usr/bin/env python3
import json, rospy, mujoco
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget, MoveToTargetResponse

HOME_QUAT = {
    "left":  (0.0, 0.9238795, -0.3826834, 0.0),
    "right":  (0.0, 0.9238795, -0.3826834, 0.0),
}

CALL = {
    "left":  {"topic": "/left/left_bottle_pose_controller/target_pose",
              "service": "/left/left_bottle_pose_controller/start",
              "frame": "left_link0"},
    "right": {"topic": "/right/right_bottle_pose_controller/target_pose",
              "service": "/right/right_bottle_pose_controller/start",
              "frame": "right_link0"},
}


offset = 0.25

def main():
    rospy.init_node("arm_node")     
    rospy.Service("~move_to_target", MoveToTarget,move_to_target)
    rospy.spin()





def move_to_target_pos(req):
    CALL[req.arm]

def move_to_target_ori():


if __name__ == "__main__":
    main()

