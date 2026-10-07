#!/usr/bin/env python3
import json, rospy, mujoco
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget, MoveToTargetResponse

HOME_QUAT = {
    "left":  (0.0, 0.9238795, -0.3826834, 0.0),
    "right":  (0.0, 0.9238795, -0.3826834, 0.0),
}

offset = 0.25

def main():
    rospy.init_node("arm_node")     
    rospy.Service("~move_to_target", MoveToTarget,move_to_target)
    rospy.spin()


def move_to_target(req):
    if req.arm == "left":
        topic = "/left/left_bottle_pose_controller/target_pose"
        service = "/left/left_bottle_pose_controller/start"
        frame_id = "left_link0"
    else:
        topic = "/right/right_bottle_pose_controller/target_pose"
        service = "/right/right_bottle_pose_controller/start"
        frame_id = "right_link0"

    
    pub = rospy.Publisher(topic, PoseStamped, queue_size=1) 
    while pub.get_num_connections() == 0 and not rospy.is_shutdown():
        rospy.sleep(0.05)

    qw, qx, qy, qz = HOME_QUAT[req.arm]
    msg = PoseStamped()
    msg.header.frame_id = frame_id
    msg.header.stamp = rospy.Time.now()
    msg.pose.position.x, msg.pose.position.y, msg.pose.position.z = req.x, req.y, req.z
    msg.pose.orientation.w = qw
    msg.pose.orientation.x = qx
    msg.pose.orientation.y = qy
    msg.pose.orientation.z = qz

    pub.publish(msg)
    rospy.sleep(0.1)
    res = rospy.ServiceProxy(service, Trigger)()
    rospy.sleep(5)
    return MoveToTargetResponse()

if __name__ == "__main__":
    main()

