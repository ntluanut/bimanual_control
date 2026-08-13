#!/usr/bin/env python3
import os, yaml, threading
import rospy, tf2_ros
from sensor_msgs.msg import JointState
from std_msgs.msg import String
from std_srvs.srv import Trigger, TriggerResponse

class PoseRecorder:
    def __init__(self):
        self.path=os.path.expanduser(rospy.get_param('~output_file','~/bimanual_ws/config/taught_poses_v4.yaml'))
        self.world=rospy.get_param('~world_frame','world')
        self.left_ee=rospy.get_param('~left_ee_frame','panda_left_link8')
        self.right_ee=rospy.get_param('~right_ee_frame','panda_right_link8')
        self.left_topic=rospy.get_param('~left_joint_topic','/panda_left/joint_states')
        self.right_topic=rospy.get_param('~right_joint_topic','/panda_right/joint_states')
        self.name=''; self.lock=threading.Lock(); self.left=None; self.right=None
        self.buf=tf2_ros.Buffer(rospy.Duration(10)); self.listener=tf2_ros.TransformListener(self.buf)
        rospy.Subscriber(self.left_topic,JointState,lambda m:self.setjs('left',m),queue_size=1)
        rospy.Subscriber(self.right_topic,JointState,lambda m:self.setjs('right',m),queue_size=1)
        rospy.Subscriber('~pose_name',String,lambda m:setattr(self,'name',m.data.strip()),queue_size=1)
        rospy.Service('~record',Trigger,self.record)
        rospy.loginfo('Pose recorder ready. Set ~pose_name then call ~record. File: %s',self.path)
    def setjs(self,side,msg):
        with self.lock: setattr(self,side,msg)
    @staticmethod
    def ordered(msg,prefix):
        d=dict(zip(msg.name,msg.position)); names=[f'{prefix}_joint{i}' for i in range(1,8)]
        missing=[n for n in names if n not in d]
        if missing: raise RuntimeError('missing joints: '+','.join(missing))
        return [float(d[n]) for n in names]
    def tf_dict(self,child):
        t=self.buf.lookup_transform(self.world,child,rospy.Time(0),rospy.Duration(1.0)).transform
        return {'parent':self.world,'child':child,'translation':[t.translation.x,t.translation.y,t.translation.z], 'quaternion':[t.rotation.x,t.rotation.y,t.rotation.z,t.rotation.w]}
    def record(self,_):
        if not self.name: return TriggerResponse(False,'publish a non-empty name on ~pose_name first')
        with self.lock: l,r=self.left,self.right
        if l is None or r is None: return TriggerResponse(False,'joint states not received from both arms')
        try:
            item={'left_arm':self.ordered(l,'panda_left'),'right_arm':self.ordered(r,'panda_right'),'left_ee':self.tf_dict(self.left_ee),'right_ee':self.tf_dict(self.right_ee)}
            os.makedirs(os.path.dirname(self.path),exist_ok=True)
            data={}
            if os.path.exists(self.path):
                with open(self.path) as f: data=yaml.safe_load(f) or {}
            data.setdefault('poses',{})[self.name]=item
            tmp=self.path+'.tmp'
            with open(tmp,'w') as f: yaml.safe_dump(data,f,sort_keys=False)
            os.replace(tmp,self.path)
            return TriggerResponse(True,'recorded '+self.name+' to '+self.path)
        except Exception as e: return TriggerResponse(False,str(e))
if __name__=='__main__': rospy.init_node('pose_recorder_v4'); PoseRecorder(); rospy.spin()
