import json, rospy, mujoco
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger


def main():
    rospy.init_node("task_node")

    rospy.wait_for_service("gripper/open")
    rospy.wait_for_service("gripper/close")
    open_gripper = rospy.ServiceProxy("gripper/open", Trigger)
    close_gripper = rospy.ServiceProxy("gripper/close", Trigger)

