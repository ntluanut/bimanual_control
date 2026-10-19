#!/usr/bin/env python3
import rospy,json, mujoco
import math
from tf.transformations import quaternion_from_euler, quaternion_multiply
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget, MoveToTargetOri
import numpy as np


SCENE = "../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml"
JSON = "../../../../LLM_API/gemini_result.json"
OFFSET = 0.3


#subscribe topic
def get_current_pose(arm):
    p = rospy.wait_for_message(f"/{arm}/site_pose", PoseStamped, timeout=2.0)
    pos = (p.pose.position.x, p.pose.position.y, p.pose.position.z)
    quat = (p.pose.orientation.x, p.pose.orientation.y, p.pose.orientation.z, p.pose.orientation.w)
    return pos, quat

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

    mujoco.mj_forward(model, data)


    base_world = data.xpos[base_id]
    object_world = data.xpos[body_id]    

    relative_pos = object_world - base_world

    x,y,z = relative_pos

    return task, arm, x,y,z

def main():
    global model, data

    rospy.init_node("task_node")

    model = mujoco.MjModel.from_xml_path("../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml")
    data = mujoco.MjData(model)

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

    if task == "rotate":
        # 0.4 0.3 1
        move_ori(arm, *quat_calc("z", math.radians(-45)))
        move_pos(arm, x,y,z+OFFSET)
        pos, _ = get_current_pose(arm)
        move_pos(arm, pos[0]+0.05, pos[1],pos[2])
        
        move_ori(arm, *quat_calc("x", math.radians(90)))
        move_ori(arm, *quat_calc("z", math.radians(45)))

        pos, _ = get_current_pose(arm)
        move_pos(arm, pos[0]+0.06, pos[1],pos[2]- 0.32)
        pos, _ = get_current_pose(arm)
        move_pos(arm, pos[0]-0.05, pos[1],pos[2])
        close_gripper_right()
        rospy.sleep(2.0)
        pos, _ = get_current_pose(arm)
        move_pos(arm, pos[0], pos[1],pos[2]+0.2)
        move_pos(arm, pos[0], pos[1]+0.35,pos[2])

        #left arm
        task, arm, x, y, z = get_target_pose("left")
        pos, _ = get_current_pose("left")
        move_pos("left",x,y,z+OFFSET)
        move_pos("left",x,y,z+OFFSET-0.1)
        close_gripper()

        




if __name__ == "__main__":
    main()