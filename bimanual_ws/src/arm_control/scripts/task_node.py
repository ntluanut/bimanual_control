#!/usr/bin/env python3
import rospy,json, mujoco
import math
from tf.transformations import quaternion_from_euler, quaternion_multiply
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget, MoveToTargetOri
from mujoco_ros_msgs.srv import GetBodyState
import numpy as np


SCENE = "../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml"
JSON = "../../../../LLM_API/gemini_result.json"
OFFSET = 0.3

get_body = None

def target_object_world(body_name):
    r = get_body(name = body_name)
    p = r.state.pose.pose.position
    return np.array([p.x, p.y, p.z])

def reference_coordinate(arm, body_name):
    base = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, f"{arm}_link0")
    mujoco.mj_forward(model, data)
    base_world = data.xpos[base].copy()

    target_world = target_object_world(body_name)
    coordinate_pos = target_world - base_world

    return coordinate_pos
    

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
    x, y, z = reference_coordinate(arm, body_name)

    return task, arm, x,y,z

def main():
    global model, data, get_body

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
    rospy.wait_for_service("/mujoco_server/get_body_state")

    get_body = rospy.ServiceProxy("/mujoco_server/get_body_state", GetBodyState)

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
        move_pos(arm, pos[0]+0.06, pos[1],pos[2]- 0.33)
        pos, _ = get_current_pose(arm)
        move_pos(arm, pos[0]-0.05, pos[1],pos[2])
        close_gripper_right()
        print("grasp")
        rospy.sleep(2.0)
        pos, _ = get_current_pose(arm)
        print("lift")
        move_pos(arm, pos[0], pos[1],pos[2]+0.3)
        print("moving in left arm")
        rospy.sleep(2.0)
        pos, _ = get_current_pose(arm)
        move_pos(arm, pos[0], pos[1]+0.35,pos[2])

        #left arm
        task, arm, lx, ly, lz = get_target_pose("left")
        open_gripper()
        move_pos("left",lx,ly,lz+OFFSET)
        move_pos("left",lx,ly,lz+OFFSET-0.2)
        close_gripper()
        move_ori("left",*quat_calc("z", math.radians(90)))
        rospy.sleep(3.0)
        open_gripper()
        rospy.sleep(3.0)
        move_ori("left",*quat_calc("z", math.radians(-90)))
        rospy.sleep(3.0)
        close_gripper()
        rospy.sleep(3.0)
        move_ori("left",*quat_calc("z", math.radians(90)))
        rospy.sleep(3.0)
        open_gripper()
        rospy.sleep(3.0)
        move_ori("left",*quat_calc("z", math.radians(-90)))
        rospy.sleep(3.0)
        close_gripper()
        rospy.sleep(3.0)


        




if __name__ == "__main__":
    main()