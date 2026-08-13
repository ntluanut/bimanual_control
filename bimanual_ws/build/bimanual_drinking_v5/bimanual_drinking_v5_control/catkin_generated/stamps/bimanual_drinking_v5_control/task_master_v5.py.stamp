#!/usr/bin/env python3
import sys, math, threading, copy
import rospy, tf2_ros
from std_msgs.msg import String, Bool
from sensor_msgs.msg import JointState
from geometry_msgs.msg import PoseStamped, WrenchStamped
from tf.transformations import quaternion_matrix, quaternion_from_matrix, quaternion_about_axis, quaternion_multiply
from bimanual_drinking_v5_msgs.msg import TaskCommand, SystemState
try:
    import moveit_commander
except ImportError:
    moveit_commander=None

class Hand:
    def __init__(self,name,cfg):
        self.name=name; self.cfg=cfg; self.q=None; self.prev=None; self.prev_t=None; self.max_vel=999.; self.last_change=rospy.Time(0)
        self.pub=rospy.Publisher(cfg['lib_cmd_topic'],String,queue_size=2)
        rospy.Subscriber(cfg['joint_state_topic'],JointState,self.cb,queue_size=2)
    def cb(self,m):
        now=rospy.Time.now(); q=list(m.position)
        if self.q is not None and self.prev_t is not None:
            dt=(now-self.prev_t).to_sec()
            if dt>1e-4 and len(q)==len(self.q): self.max_vel=max(abs(a-b)/dt for a,b in zip(q,self.q))
        self.prev,self.q,self.prev_t=self.q,q,now
    def command(self,key):
        cmd=self.cfg['commands'][key]; self.pub.publish(String(data=cmd)); self.last_change=rospy.Time.now(); rospy.loginfo('%s hand <- %s',self.name,cmd)
    def alive(self): return self.pub.get_num_connections()>0 and self.q is not None
    def wait_settled(self,timeout,vel_thresh,settle_s):
        start=rospy.Time.now(); stable=None
        while not rospy.is_shutdown() and (rospy.Time.now()-start).to_sec()<timeout:
            if self.q is not None and self.max_vel<vel_thresh:
                stable=stable or rospy.Time.now()
                if (rospy.Time.now()-stable).to_sec()>=settle_s:return True
            else: stable=None
            rospy.sleep(0.05)
        return False

class Master:
    def __init__(self):
        self.cfg=rospy.get_param('~'); self.busy=False; self.estop=False; self.err=''; self.phase='INIT'; self.attached=False
        self.left_hand=Hand('left_3f',self.cfg['hands']['left']); self.right_hand=Hand('right_4f',self.cfg['hands']['right'])
        self.attach_pub=rospy.Publisher('/bottle_frame_manager_v5/attach',Bool,queue_size=1,latch=True)
        self.state_pub=rospy.Publisher('~state',SystemState,queue_size=2,latch=True)
        rospy.Subscriber('~command',TaskCommand,self.cmd_cb,queue_size=2)
        rospy.Subscriber('~estop',Bool,lambda m:self.stop('operator estop') if m.data else None,queue_size=1)
        for side in ['left','right']:
            rospy.Subscriber(self.cfg['arms'][side]['wrench_topic'],WrenchStamped,self.wrench_cb,callback_args=side,queue_size=1)
        self.tfbuf=tf2_ros.Buffer(rospy.Duration(10)); self.tfl=tf2_ros.TransformListener(self.tfbuf)
        self.moveit_ready=False; self.robot=None; self.scene=None; self.groups={}
        if moveit_commander:
            try:
                moveit_commander.roscpp_initialize(sys.argv); self.robot=moveit_commander.RobotCommander(); self.scene=moveit_commander.PlanningSceneInterface(synchronous=True)
                for side in ['left','right']:
                    g=moveit_commander.MoveGroupCommander(self.cfg['arms'][side]['move_group'])
                    g.set_pose_reference_frame(self.cfg['frames']['world']); g.set_planning_time(self.cfg['planning']['planning_time_s']); g.set_num_planning_attempts(self.cfg['planning']['attempts']); g.allow_replanning(True)
                    self.groups[side]=g
                self.moveit_ready=True
            except Exception as e: self.err='MoveIt init failed: '+str(e); rospy.logerr(self.err)
        self.attach_pub.publish(False); self.phase='READY'; rospy.Timer(rospy.Duration(.5),lambda _:self.publish())
    def wrench_cb(self,m,side):
        f=m.wrench.force; t=m.wrench.torque; fn=(f.x*f.x+f.y*f.y+f.z*f.z)**.5; tn=(t.x*t.x+t.y*t.y+t.z*t.z)**.5
        if fn>self.cfg['safety']['max_force_N'] or tn>self.cfg['safety']['max_torque_Nm']: self.stop('%s wrench %.1fN %.1fNm'%(side,fn,tn))
    def stop(self,why):
        self.estop=True; self.err=why; self.phase='ESTOP'
        for g in self.groups.values():
            try:g.stop();g.clear_pose_targets()
            except:pass
        rospy.logerr(why); self.publish()
    def lookup_pose(self,target):
        tr=self.tfbuf.lookup_transform(self.cfg['frames']['world'],target,rospy.Time(0),rospy.Duration(2.0))
        p=PoseStamped(); p.header.frame_id=self.cfg['frames']['world']; p.header.stamp=rospy.Time.now(); p.pose.position.x=tr.transform.translation.x; p.pose.position.y=tr.transform.translation.y; p.pose.position.z=tr.transform.translation.z; p.pose.orientation=tr.transform.rotation; return p
    def transform_offset(self,base_frame,offset):
        tr=self.tfbuf.lookup_transform(self.cfg['frames']['world'],base_frame,rospy.Time(0),rospy.Duration(2.0))
        import numpy as np
        M=quaternion_matrix([tr.transform.rotation.x,tr.transform.rotation.y,tr.transform.rotation.z,tr.transform.rotation.w]); M[:3,3]=[tr.transform.translation.x,tr.transform.translation.y,tr.transform.translation.z]
        O=quaternion_matrix(offset['quaternion']); O[:3,3]=offset['translation']; T=M.dot(O); q=quaternion_from_matrix(T)
        p=PoseStamped(); p.header.frame_id=self.cfg['frames']['world']; p.header.stamp=rospy.Time.now(); p.pose.position.x,p.pose.position.y,p.pose.position.z=T[:3,3]; p.pose.orientation.x,p.pose.orientation.y,p.pose.orientation.z,p.pose.orientation.w=q; return p
    def move_pose(self,side,pose,speed,plan_only=False):
        if not self.moveit_ready: raise RuntimeError('MoveIt is not ready. Start the dual-arm move_group and verify configured group names.')
        g=self.groups[side]; g.set_max_velocity_scaling_factor(speed); g.set_max_acceleration_scaling_factor(min(speed,self.cfg['safety']['max_accel_scale'])); g.set_start_state_to_current_state(); g.set_pose_target(pose,self.cfg['arms'][side]['eef_link'])
        plan_result=g.plan(); plan=plan_result[1] if isinstance(plan_result,tuple) else plan_result
        ok=bool(plan and getattr(plan,'joint_trajectory',None) and plan.joint_trajectory.points)
        if not ok: g.clear_pose_targets(); raise RuntimeError('%s planning failed'%side)
        if not plan_only:
            if not g.execute(plan,wait=True): raise RuntimeError('%s execution failed'%side)
            g.stop()
        g.clear_pose_targets()
    def hand(self,side,key):
        h=self.left_hand if side=='left' else self.right_hand; h.command(key)
        hc=self.cfg['hands']['completion']
        if not h.wait_settled(hc['timeout_s'],hc['velocity_threshold_rad_s'],hc['settle_duration_s']): raise RuntimeError('%s hand did not settle'%side)
    def run_sequence(self,speed,plan_only):
        self.phase='LEFT_PREGRASP'; self.hand('left','open'); self.move_pose('left',self.transform_offset('bottle',self.cfg['task_frames']['bottle_to_left_pregrasp']),speed,plan_only)
        self.phase='LEFT_GRASP_APPROACH'; self.move_pose('left',self.transform_offset('bottle',self.cfg['task_frames']['bottle_to_left_grasp']),speed,plan_only)
        if not plan_only:
            self.phase='GRASP_BOTTLE'; self.hand('left','grasp'); self.attached=True; self.attach_pub.publish(True); rospy.sleep(.3)
        self.phase='RIGHT_CAP_PREGRASP'; self.hand('right','open'); self.move_pose('right',self.transform_offset('bottle',self.cfg['task_frames']['bottle_to_right_pregrasp']),speed,plan_only)
        self.phase='RIGHT_CAP_GRASP'; self.move_pose('right',self.transform_offset('bottle',self.cfg['task_frames']['bottle_to_right_grasp']),speed,plan_only)
        if not plan_only:self.hand('right','grasp')
        self.phase='UNSCREW'
        if not plan_only:self.unscrew(speed)
        self.phase='READY'
    def unscrew(self,speed):
        u=self.cfg['unscrew']; base=self.cfg['task_frames']['bottle_to_right_grasp']; n=max(1,int(abs(u['angle_rad'])/u['step_rad']))
        for i in range(1,n+1):
            if self.estop: raise RuntimeError('estop')
            frac=float(i)/n; off=copy.deepcopy(base); qrot=quaternion_about_axis(u['angle_rad']*frac,[0,0,1]); off['quaternion']=list(quaternion_multiply(base['quaternion'],qrot)); off['translation'][2]=base['translation'][2]+u['axial_rise_m']*frac
            self.move_pose('right',self.transform_offset('bottle',off),min(speed,u['max_speed_scale']),False)
    def cmd_cb(self,m):
        if m.command==TaskCommand.STATUS:return self.publish()
        if m.command==TaskCommand.CLEAR_ESTOP:self.estop=False;self.err='';self.phase='READY';return
        if m.command==TaskCommand.STOP:return self.stop('STOP command')
        if self.busy or self.estop:return rospy.logwarn('command rejected: busy=%s estop=%s',self.busy,self.estop)
        self.busy=True
        try:
            speed=max(.01,min(m.speed_scale or .05,self.cfg['safety']['max_speed_scale']))
            if m.command==TaskCommand.HOME_HANDS:self.hand('left','home');self.hand('right','home')
            elif m.command==TaskCommand.RUN_BOTTLE_CAP_SEQUENCE:self.run_sequence(speed,m.plan_only)
            else: raise RuntimeError('Use RUN_BOTTLE_CAP_SEQUENCE in v5; phase commands are reserved for staged extension.')
        except Exception as e:self.err=str(e);self.phase='ERROR';rospy.logerr(self.err)
        finally:self.busy=False;self.publish()
    def publish(self):
        m=SystemState();m.header.stamp=rospy.Time.now();m.phase=self.phase;m.busy=self.busy;m.estop=self.estop;m.moveit_ready=self.moveit_ready;m.bottle_attached=self.attached;m.left_hand_alive=self.left_hand.alive();m.right_hand_alive=self.right_hand.alive();m.left_hand_settled=self.left_hand.max_vel<self.cfg['hands']['completion']['velocity_threshold_rad_s'];m.right_hand_settled=self.right_hand.max_vel<self.cfg['hands']['completion']['velocity_threshold_rad_s'];m.last_error=self.err;self.state_pub.publish(m)
if __name__=='__main__':rospy.init_node('bimanual_master_v5');Master();rospy.spin()
