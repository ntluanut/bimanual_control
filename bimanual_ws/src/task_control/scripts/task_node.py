#!/usr/bin/env python3
import rospy
from std_srvs.srv import Trigger

def main():
    rospy.init_node("task_node")

    rospy.wait_for_service("/left/gripper/open", timeout=30.0)
    rospy.wait_for_service("/left/gripper/close", timeout=30.0)

    open_gripper = rospy.ServiceProxy("/left/gripper/open", Trigger)
    close_gripper = rospy.ServiceProxy("/left/gripper/close", Trigger)


    close_gripper()
    rospy.sleep(3.0)

