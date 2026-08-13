#!/usr/bin/env python3
import rospy, tf2_ros
from std_msgs.msg import Bool
from geometry_msgs.msg import TransformStamped

class BottleFrameManager:
    def __init__(self):
        self.world=rospy.get_param('~world_frame','world')
        self.left_ee=rospy.get_param('~left_ee_frame','panda_left_link8')
        self.child=rospy.get_param('~bottle_frame','bottle')
        self.fixed=rospy.get_param('~fixed_pose')
        self.attached_tf=rospy.get_param('~left_ee_to_bottle')
        self.attached=False
        self.br=tf2_ros.TransformBroadcaster()
        rospy.Subscriber('~attach',Bool,self.cb,queue_size=1)
        rospy.Timer(rospy.Duration(0.02),self.tick)
    def cb(self,m):
        self.attached=m.data
        rospy.loginfo('Bottle frame mode: %s','ATTACHED_TO_LEFT_EE' if self.attached else 'FIXED_IN_WORLD')
    @staticmethod
    def make(parent,child,cfg):
        t=TransformStamped(); t.header.stamp=rospy.Time.now(); t.header.frame_id=parent; t.child_frame_id=child
        tr=cfg['translation']; q=cfg['quaternion']
        t.transform.translation.x,tr0=tr[0],tr[0]; t.transform.translation.y=tr[1]; t.transform.translation.z=tr[2]
        t.transform.rotation.x=q[0]; t.transform.rotation.y=q[1]; t.transform.rotation.z=q[2]; t.transform.rotation.w=q[3]
        return t
    def tick(self,_):
        self.br.sendTransform(self.make(self.left_ee if self.attached else self.world,self.child,self.attached_tf if self.attached else self.fixed))
if __name__=='__main__':
    rospy.init_node('bottle_frame_manager_v5'); BottleFrameManager(); rospy.spin()
