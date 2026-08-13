#!/usr/bin/env python3
import argparse, math, os, sys, time
import numpy as np
import rospy, tf2_ros, tf.transformations as tft, yaml
from geometry_msgs.msg import PoseStamped

def Tpose(p):
 q=p['orientation']; T=tft.quaternion_matrix([q['x'],q['y'],q['z'],q['w']]); v=p['position']; T[:3,3]=[v['x'],v['y'],v['z']]; return T

def Ttf(m):
 t=m.transform.translation; q=m.transform.rotation; T=tft.quaternion_matrix([q.x,q.y,q.z,q.w]); T[:3,3]=[t.x,t.y,t.z]; return T

def msg(T,frame):
 q=tft.quaternion_from_matrix(T); m=PoseStamped(); m.header.stamp=rospy.Time.now(); m.header.frame_id=frame; m.pose.position.x,m.pose.position.y,m.pose.position.z=T[:3,3]; m.pose.orientation.x,m.pose.orientation.y,m.pose.orientation.z,m.pose.orientation.w=q; return m

def rang(A,B): return math.acos(np.clip((np.trace(A[:3,:3].T@B[:3,:3])-1)/2,-1,1))
def blend(A,B,u):
 q=tft.quaternion_slerp(tft.quaternion_from_matrix(A),tft.quaternion_from_matrix(B),u); T=tft.quaternion_matrix(q); T[:3,3]=(1-u)*A[:3,3]+u*B[:3,3]; return T
def smooth(s): s=max(0,min(1,s)); return 10*s**3-15*s**4+6*s**5

class Demo:
 def __init__(self,a):
  self.a=a; self.b=tf2_ros.Buffer(rospy.Duration(5)); self.l=tf2_ros.TransformListener(self.b); self.lp=rospy.Publisher(a.left_topic,PoseStamped,queue_size=1); self.rp=rospy.Publisher(a.right_topic,PoseStamped,queue_size=1); self.rate=rospy.Rate(a.rate)
 def tf(self,child): return Ttf(self.b.lookup_transform(self.a.reference_frame,child,rospy.Time(0),rospy.Duration(5)))
 def pub(self,L,R): self.lp.publish(msg(L,self.a.reference_frame)); self.rp.publish(msg(R,self.a.reference_frame))
 def run(self,e):
  end=time.time()+10
  while time.time()<end and not rospy.is_shutdown() and not(self.lp.get_num_connections() and self.rp.get_num_connections()): rospy.sleep(.1)
  if not(self.lp.get_num_connections() and self.rp.get_num_connections()): raise RuntimeError('left/right target subscribers missing: current centre-only controller is not independently commandable')
  L0,R0=self.tf(self.a.left_ee),self.tf(self.a.right_ee); Lg,Rg=Tpose(e['left']['pose']),Tpose(e['right']['pose']); rel=np.array(e['formation']['T_left_right_row_major']).reshape(4,4)
  if input('Type RUN_FORMATION to move both robots: ').strip()!='RUN_FORMATION': return
  dur=max(np.linalg.norm(Lg[:3,3]-L0[:3,3])/self.a.linear_speed,np.linalg.norm(Rg[:3,3]-R0[:3,3])/self.a.linear_speed,rang(L0,Lg)/self.a.angular_speed,rang(R0,Rg)/self.a.angular_speed,1)
  t0=rospy.Time.now().to_sec()
  while not rospy.is_shutdown():
   s=(rospy.Time.now().to_sec()-t0)/dur; u=smooth(s); self.pub(blend(L0,Lg,u),blend(R0,Rg,u));
   if s>=1: break
   self.rate.sleep()
  stable=None
  while not rospy.is_shutdown():
   L=self.tf(self.a.left_ee); ok=np.linalg.norm(L[:3,3]-Lg[:3,3])<self.a.pos_tol and rang(L,Lg)<math.radians(self.a.rot_tol_deg); now=rospy.Time.now().to_sec(); stable=now if ok and stable is None else (stable if ok else None)
   self.pub(Lg,Rg)
   if stable and now-stable>=self.a.settle: break
   self.rate.sleep()
  rospy.loginfo('Left reached taught pose; right now tracks recorded T_left_right')
  last=Rg; lastt=rospy.Time.now().to_sec()
  while not rospy.is_shutdown():
   now=rospy.Time.now().to_sec(); dt=max(.001,now-lastt); L=self.tf(self.a.left_ee); des=L@rel; d=des[:3,3]-last[:3,3]; n=np.linalg.norm(d); mx=self.a.track_speed*dt
   if n>mx>0: des[:3,3]=last[:3,3]+d*mx/n
   self.pub(Lg,des); last,lastt=des,now; self.rate.sleep()

def main():
 ap=argparse.ArgumentParser(); ap.add_argument('yaml_file'); ap.add_argument('--pose-name',required=True); ap.add_argument('--reference-frame',default='panda_2_link0'); ap.add_argument('--left-ee',default='panda_2_EE'); ap.add_argument('--right-ee',default='panda_1_EE')
 ap.add_argument('--left-topic',default='/panda_dual/dual_arm_cartesian_impedance_example_controller/left_target_pose'); ap.add_argument('--right-topic',default='/panda_dual/dual_arm_cartesian_impedance_example_controller/right_target_pose'); ap.add_argument('--rate',type=float,default=100); ap.add_argument('--linear-speed',type=float,default=.03); ap.add_argument('--angular-speed',type=float,default=.2); ap.add_argument('--track-speed',type=float,default=.03); ap.add_argument('--pos-tol',type=float,default=.005); ap.add_argument('--rot-tol-deg',type=float,default=3); ap.add_argument('--settle',type=float,default=.5)
 a,ra=ap.parse_known_args(); rospy.init_node('left_then_right_track',argv=[sys.argv[0]]+ra); d=yaml.safe_load(open(os.path.expanduser(a.yaml_file))); Demo(a).run(d['dual_ee_poses'][a.pose_name])
if __name__=='__main__': main()
