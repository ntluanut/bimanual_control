#!/usr/bin/env python3
import rospy, tf2_ros
from geometry_msgs.msg import TransformStamped
class ObjectFrame:
    def __init__(self):
        self.parent=rospy.get_param('~left_ee_frame','panda_left_link8'); self.child=rospy.get_param('~bottle_frame','bottle')
        self.xyz=rospy.get_param('~left_ee_to_bottle/translation',[0,0,0.12]); self.q=rospy.get_param('~left_ee_to_bottle/quaternion',[0,0,0,1])
        self.br=tf2_ros.TransformBroadcaster(); self.timer=rospy.Timer(rospy.Duration(1.0/rospy.get_param('~rate_hz',30.0)),self.cb)
    def cb(self,_):
        m=TransformStamped(); m.header.stamp=rospy.Time.now(); m.header.frame_id=self.parent; m.child_frame_id=self.child
        m.transform.translation.x,m.transform.translation.y,m.transform.translation.z=self.xyz
        m.transform.rotation.x,m.transform.rotation.y,m.transform.rotation.z,m.transform.rotation.w=self.q; self.br.sendTransform(m)
if __name__=='__main__': rospy.init_node('object_frame_v4'); ObjectFrame(); rospy.spin()
