import json, rospy
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Trigger

with open("gemini_result.json") as f:
    args = json.load(f)

arm = args["arm"]
x, y, z = args["position"]
qx, qy, qz, qw = args["orientation"]

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
msg.pose.position.x, msg.pose.position.y, msg.pose.position.z = x, y, z
msg.pose.orientation.x = qx
msg.pose.orientation.y = qy
msg.pose.orientation.z = qz
msg.pose.orientation.w = qw

pub.publish(msg)
rospy.sleep(0.1)

rospy.wait_for_service(service)
res = rospy.ServiceProxy(service, Trigger)()
