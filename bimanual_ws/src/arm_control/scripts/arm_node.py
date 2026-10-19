#!/usr/bin/env python3
import json, rospy, mujoco
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget, MoveToTargetResponse,MoveToTargetOri,MoveToTargetOriResponse
from tf.transformations import quaternion_multiply


HOME_QUAT = {
    "left":  (0.0, 0.9238795, -0.3826834, 0.0),
    "right":  (0.0, 0.9238795, -0.3826834, 0.0),
}

HOME_POS = {
    "left":  (0.301, 0.0, 0.377),
    "right": (0.301, 0.0, 0.377),
}

CALL = {
    "left":  {"topic": "/left/left_bottle_pose_controller/target_pose",
              "service": "/left/left_bottle_pose_controller/start",
              "frame": "left_link0"},
    "right": {"topic": "/right/right_bottle_pose_controller/target_pose",
              "service": "/right/right_bottle_pose_controller/start",
              "frame": "right_link0"},
}

pubs = {}
starts = {}
last_pos = {}
last_quat = {}

for arm in HOME_POS:
    last_pos[arm] = HOME_POS[arm]
for arm in HOME_QUAT:
    last_quat[arm] = HOME_QUAT[arm]

offset = 0.25

def move_to_target_pos(req):
    call = CALL[req.arm]
    pub = pubs[req.arm]

    msg = PoseStamped()
    msg.header.frame_id = call["frame"]
    msg.pose.position.x, msg.pose.position.y, msg.pose.position.z = req.x, req.y, req.z

    qw,qx,qy,qz = last_quat[req.arm]
    msg.pose.orientation.w = qw
    msg.pose.orientation.x = qx
    msg.pose.orientation.y = qy
    msg.pose.orientation.z = qz

    pub.publish(msg)
    rospy.sleep(0.1)
    start = starts[req.arm]
    res = start()

    if res.success:
        last_pos[req.arm] = (req.x, req.y, req.z)

    return MoveToTargetResponse(reached=res.success)

def move_to_target_ori(req):
    call = CALL[req.arm]
    pub = pubs[req.arm]

    x,y,z = last_pos[req.arm]
    w0, x0, y0, z0 = last_quat[req.arm]
    q_current = (x0, y0, z0, w0)
    q_rot = (req.qx, req.qy, req.qz, req.qw)

    qx, qy, qz, qw = quaternion_multiply(q_current, q_rot)

    msg = PoseStamped()
    msg.header.frame_id = call["frame"]
    msg.header.stamp = rospy.Time.now()
    
    msg.pose.position.x, msg.pose.position.y, msg.pose.position.z = x, y, z
    msg.pose.orientation.w = qw
    msg.pose.orientation.x = qx
    msg.pose.orientation.y = qy
    msg.pose.orientation.z = qz

    pub.publish(msg)
    rospy.sleep(0.1)

    start = starts[req.arm]
    res = start()

    if res.success:
        last_quat[req.arm] = (qw,qx,qy,qz)

    return MoveToTargetOriResponse(reached=res.success)

def main():
    rospy.init_node("arm_node")

    pubs["left"]  = rospy.Publisher("/left/left_bottle_pose_controller/target_pose", PoseStamped, queue_size=1)
    pubs["right"] = rospy.Publisher("/right/right_bottle_pose_controller/target_pose", PoseStamped, queue_size=1)

    rospy.sleep(1.0)

    starts["left"]  = rospy.ServiceProxy("/left/left_bottle_pose_controller/start", Trigger)
    starts["right"] = rospy.ServiceProxy("/right/right_bottle_pose_controller/start", Trigger)
    
    rospy.Service('/arm_node/move_to_target', MoveToTarget, move_to_target_pos)
    rospy.Service('/arm_node/move_to_target_ori', MoveToTargetOri, move_to_target_ori)

    print("services available")
    rospy.spin()


if __name__ == "__main__":
    main()

