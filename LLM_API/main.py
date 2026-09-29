import json, rospy, mujoco
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger

HOME_QUAT = {
    "left":  (0.0, 0.9238795, -0.3826834, 0.0),
    "right":  (0.0, 0.9238795, -0.3826834, 0.0),
}

offset = 0.25

model = mujoco.MjModel.from_xml_path("../bimanual_ws/src/Bimanual_Robot_Project_MuJoCo/franka_emika_panda/scene.xml")
data = mujoco.MjData(model)
mujoco.mj_forward(model, data)


with open("gemini_result.json") as f:
    args = json.load(f)

arm = args["arm"]
qw,qx,qy,qz = HOME_QUAT[arm]

color = args["color"]
object_type = args["object"]

body_name = f"{color}_{object_type}"
base_name = f"{arm}_link0"

base_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, base_name)
body_id = mujoco.mj_name2id(model, mujoco.mjtObj.mjOBJ_BODY, body_name)

base_world = data.xpos[base_id]
object_world = data.xpos[body_id]    

relative_pos = object_world - base_world

x,y,z = relative_pos




rospy.init_node("gemini_messenger")

if arm == "left":
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

msg = PoseStamped()
msg.header.frame_id = frame_id
msg.header.stamp = rospy.Time.now()
msg.pose.position.x, msg.pose.position.y, msg.pose.position.z = x,y,z+offset
msg.pose.orientation.w = qw
msg.pose.orientation.x = qx
msg.pose.orientation.y = qy
msg.pose.orientation.z = qz



pub.publish(msg)
rospy.sleep(0.1)

rospy.wait_for_service(service)
res = rospy.ServiceProxy(service, Trigger)()
