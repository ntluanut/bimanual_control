#!/usr/bin/env python3
import rospy,json, mujoco
import math
from tf.transformations import quaternion_from_euler, quaternion_multiply
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget, MoveToTargetOri
import numpy as np


SCENE = "../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml"
JSON = "../../../../LLM_API/gemini_result.json"
OFFSET = 0.25

model = mujoco.MjModel.from_xml_path("../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml")
data = mujoco.MjData(model)

q_home = (-1.0, 0.0, 0.0, 0.0)
nminus90 = quaternion_from_euler(math.radians(+90), 0, 0)
q_new = quaternion_multiply(nminus90, q_home)
Q_HOME_XYZW = (0.9238795, -0.3826834, 0.0, 0.0)



def get_current_pos(arm):
    if arm == "left":
        site_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_SITE, "left_ee_site")
    else:
        site_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_SITE, "right_ee_site")

    pos = data.site_xpos[site_id].copy()
    x,y,z = pos
    return x,y,z

def get_current_quat(arm):
    if arm == "left":
        site_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_SITE, "left_ee_site")
    else:
        site_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_SITE, "right_ee_site")

    quat = np.zeros(4)
    mujoco.mju_mat2Quat(quat, data.site_xmat[site_id])
    w,x,y,z = quat
    return w,x,y,z

def quat_calc(axis,th):
    axis_value = {
        "x": (1,0,0),
        "y": (0,1,0),
        "z": (0,0,1),
    }

    n = np.array(axis_value[axis])
    xyz = n * math.sin(th / 2)
    w = math.cos(th/2)
    xyzw = np.array([*xyz,w])
    
    return xyzw


def get_target_pose(arm_param=None):

    with open(JSON) as f:
        args = json.load(f)

    task = args["task"]
    arm = arm_param or args["arm"]
    color = args["color"]
    object_type = args["object"]


    body_name = f"{color}_{object_type}"
    base_name = f"{arm}_link0"

    base_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, base_name)
    body_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, body_name)

    mujoco.mj_forward(model, data)
    site_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_SITE, "right_ee_site")

    model = mujoco.MjModel.from_xml_path(SCENE)
    data = mujoco.MjData(model)
    mujoco.mj_forward(model, data)


    base_world = data.xpos[base_id]
    object_world = data.xpos[body_id]    

    relative_pos = object_world - base_world

    x,y,z = relative_pos

    return task, arm, x,y,z

def main():

    rospy.init_node("task_node")

    print("node started")


    rospy.wait_for_service("/left/gripper/open", timeout=30.0)
    rospy.wait_for_service("/left/gripper/close", timeout=30.0)
    rospy.wait_for_service("/arm_node/move_to_target")

    print("services available")

    move_pos = rospy.ServiceProxy('/arm_node/move_to_target', MoveToTarget)
    move_ori = rospy.ServiceProxy('/arm_node/move_to_target_ori', MoveToTargetOri)

    open_gripper = rospy.ServiceProxy("/left/gripper/open", Trigger)
    close_gripper = rospy.ServiceProxy("/left/gripper/close", Trigger)

    open_gripper_right = rospy.ServiceProxy("/right/gripper/open", Trigger)
    close_gripper_right = rospy.ServiceProxy("/right/gripper/close", Trigger)

    print("service proxies initialized")
    print("starting task")

    task, arm, x, y, z = get_target_pose()

    if task == "pick_up":
        move_pos(arm, x, y, z+OFFSET)
        rospy.sleep(3.0)
        open_gripper()
        move_pos(arm, x, y, z+0.08)
        close_gripper()
        rospy.sleep(2.0)
        move_pos(arm, x, y, z+OFFSET)
        rospy.sleep(3.0)
        move_pos(arm, x+0.2, y+0.2, 0.9)
        open_gripper()
        rospy.sleep(3.0)

    if task == "rotate":
        current_quat = get_current_quat(arm)
        move_ori(arm,*quat_calc("z",math.radians(-45)))
        move_ori(arm,*quat_calc("x",math.radians(+90)))
        move_ori(arm, *quat_calc("z", math.radians(+40)))

        rospy.sleep(3.0)
        move_pos(arm, x+0.2, y, z)
        move_pos(arm, x+0.05, y, z-0.2)
        rospy.sleep(1.0)
        
        close_gripper_right()
        rospy.sleep(2.0)
        move_pos(arm, x+0.05, y, z+0.2)
        move_pos("left", x, y - 2, z + OFFSET)
        rospy.sleep(1.0)


if __name__ == "__main__":
    main()