#!/usr/bin/env python3
import json, rospy, mujoco, threading
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

SITE = {
    "left": "left_ee_site",
    "right": "right_ee_site"
}

pubs = {}
starts = {}
last_pos = {}
last_quat = {}
joint_msgs = {}
lock = threading.Lock()
model = None
data = None
logged = set()

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


def compute_current_pos(arm):
    msg = joint_msgs.get(arm)
    if msg is None:
        return None
    with lock:
        for name, pos in zip(msg.name, msg.position):
            j = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_JOINT, name)
            if j >= 0:
                data.qpos[model.jnt_qposadr[j]] = pos
        mujoco.mj_forward(model, data)

        site_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_SITE, SITE[arm])
        base_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, f"{arm}_link0")

        R_base = data.xmat[base_id].reshape(3, 3)
        p = R_base.T @ (data.site_xpos[site_id] - data.xpos[base_id])

        #get site quat
        q_site = np.zeros(4)
        mujoco.mju_mat2Quat(q_site, data.site_xmat[site_id])
        
        q_inv = np.zeros(4)
        mujoco.mju_negQuat(q_inv, data.xquat[base_id])
        q = np.zeros(4)
        mujoco.mju_mulQuat(q, q_inv, q_site)
    return p, (q[1], q[2], q[3], q[0])

def publish_site_pose(_):
    for arm in ("left", "right"):
        r = compute_site_pose(arm)
        if r is None:
            continue
        p, (qx, qy, qz, qw) = r

        out = PoseStamped()
        out.header.stamp = rospy.Time.now()
        out.header.frame_id = CALL[arm]["frame"]
        out.pose.position.x = p[0]
        out.pose.position.y = p[1]
        out.pose.position.z = p[2]
        out.pose.orientation.x, out.pose.orientation.y = qx, qy
        out.pose.orientation.z, out.pose.orientation.w = qz, qw
        site_pubs[arm].publish(out)



def main():
    rospy.init_node("arm_node")

    pubs["left"]  = rospy.Publisher("/left/left_bottle_pose_controller/target_pose", PoseStamped, queue_size=1)
    pubs["right"] = rospy.Publisher("/right/right_bottle_pose_controller/target_pose", PoseStamped, queue_size=1)

    site_pubs["left"]  = rospy.Publisher("/left/site_pose",  PoseStamped, queue_size=1)
    site_pubs["right"] = rospy.Publisher("/right/site_pose", PoseStamped, queue_size=1)

    rospy.sleep(1.0)

    starts["left"]  = rospy.ServiceProxy("/left/left_bottle_pose_controller/start", Trigger)
    starts["right"] = rospy.ServiceProxy("/right/right_bottle_pose_controller/start", Trigger)
    
    rospy.Service('/arm_node/move_to_target', MoveToTarget, move_to_target_pos)
    rospy.Service('/arm_node/move_to_target_ori', MoveToTargetOri, move_to_target_ori)

    site_name = rospy.get_param("~site",f"{arm}_ee_site")
    


    print("services available")
    rospy.spin()


if __name__ == "__main__":
    main()

