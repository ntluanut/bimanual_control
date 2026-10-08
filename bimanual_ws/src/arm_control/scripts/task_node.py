#!/usr/bin/env python3
import rospy,json, mujoco
from std_srvs.srv import Trigger
from armcontrol.srv import MoveToTarget

SCENE = "../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml"
JSON = "../../../../LLM_API/gemini_result.json"
OFFSET = 0.25



def get_target_pose():
    model = mujoco.MjModel.from_xml_path("../../Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml")
    data = mujoco.MjData(model)
    mujoco.mj_forward(model, data)

    model = mujoco.MjModel.from_xml_path(SCENE)
    data = mujoco.MjData(model)
    mujoco.mj_forward(model, data)

    base_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, base_name)
    body_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, body_name)

    base_world = data.xpos[base_id]
    object_world = data.xpos[body_id]    

    relative_pos = object_world - base_world

    x,y,z = relative_pos

    return arm, x,y,z

def main():
    with open(JSON) as f:
        args = json.load(f)

    arm = args["arm"]
    color = args["color"]
    object_type = args["object"]

    body_name = f"{color}_{object_type}"
    base_name = f"{arm}_link0"

    rospy.init_node("task_node")

    print("node started")

    task = args["task"]
    arm = args["arm"]
    color = args["color"]
    object_type = args["object"]

    print("pose loaded")

    rospy.wait_for_service("/left/gripper/open", timeout=30.0)
    rospy.wait_for_service("/left/gripper/close", timeout=30.0)
    rospy.wait_for_service("/arm_node/move_to_target")

    print("services available")

    move_left_arm = rospy.ServiceProxy('/arm_node/move_to_target', MoveToTarget)

    open_gripper = rospy.ServiceProxy("/left/gripper/open", Trigger)
    close_gripper = rospy.ServiceProxy("/left/gripper/close", Trigger)

    print("service proxies initialized")

    print("starting task")


    if task == "pick_up":
        arm, x, y, z = get_target_pose()
        move_left_arm(arm, x, y, z+OFFSET)
        rospy.sleep(3.0)
        open_gripper()
        move_left_arm(arm, x, y, z+0.08)
        close_gripper()
        rospy.sleep(2.0)
        move_left_arm(arm, x, y, z+OFFSET)
        rospy.sleep(3.0)
        move_left_arm(arm, x+0.2, y+0.2, 0.9)
        open_gripper()
        rospy.sleep(3.0)

if __name__ == "__main__":
    main()