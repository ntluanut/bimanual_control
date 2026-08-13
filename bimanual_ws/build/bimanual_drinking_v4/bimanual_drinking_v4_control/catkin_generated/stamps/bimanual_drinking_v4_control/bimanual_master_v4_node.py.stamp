#!/usr/bin/env python3
import os, yaml, threading
import rospy, actionlib, tf2_ros
from std_msgs.msg import String, Bool
from sensor_msgs.msg import JointState
from geometry_msgs.msg import WrenchStamped
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal
from actionlib_msgs.msg import GoalStatus
from bimanual_drinking_v4_msgs.msg import TaskCommand, SystemState

class Arm:
    def __init__(self,side,cfg):
        self.side=side; self.joints=cfg['joints']; self.ns=cfg['controller_ns']; self.required=cfg.get('required',True)
        self.client=actionlib.SimpleActionClient(self.ns,FollowJointTrajectoryAction); self.connected=False; self.current=None
        rospy.Subscriber(cfg['joint_state_topic'],JointState,self.js,queue_size=1)
    def js(self,m):
        d=dict(zip(m.name,m.position))
        if all(n in d for n in self.joints): self.current=[d[n] for n in self.joints]
    def connect(self,t): self.connected=self.client.wait_for_server(rospy.Duration(t)); return self.connected
    def goal(self,q,dur,start):
        if len(q)!=7: raise ValueError(self.side+' target must contain 7 joints')
        g=FollowJointTrajectoryGoal(); g.trajectory=JointTrajectory(); g.trajectory.header.stamp=start; g.trajectory.joint_names=self.joints
        p=JointTrajectoryPoint(); p.positions=list(map(float,q)); p.velocities=[0.0]*7; p.time_from_start=rospy.Duration(dur); g.trajectory.points=[p]; return g
    def cancel(self): self.client.cancel_all_goals()

class Master:
    def __init__(self):
        self.lock=threading.Lock(); self.busy=False; self.estop=False; self.phase='INIT'; self.err=''
        self.cfg=rospy.get_param('~'); self.connect_timeout=float(self.cfg.get('connect_timeout_s',5)); self.delay=float(self.cfg.get('future_start_delay_s',1.0)); self.margin=float(self.cfg.get('goal_timeout_margin_s',3))
        self.max_speed=float(self.cfg['safety'].get('max_speed_scale',0.2)); self.max_force=float(self.cfg['safety'].get('max_force_N',35)); self.max_torque=float(self.cfg['safety'].get('max_torque_Nm',6))
        self.left=Arm('left',self.cfg['arms']['left']); self.right=Arm('right',self.cfg['arms']['right'])
        self.poses=self.load_poses(self.cfg.get('taught_poses_file',''))
        self.left_hand=rospy.Publisher(self.cfg['hands']['left']['lib_cmd_topic'],String,queue_size=2)
        self.right_hand=rospy.Publisher(self.cfg['hands']['right']['lib_cmd_topic'],String,queue_size=2)
        self.handmap=self.cfg['hands']
        self.statepub=rospy.Publisher('~state',SystemState,queue_size=3,latch=True)
        rospy.Subscriber('~command',TaskCommand,self.command,queue_size=2); rospy.Subscriber('~estop',Bool,self.estop_cb,queue_size=2)
        rospy.Subscriber('/panda_left/franka_state_controller/F_ext',WrenchStamped,self.wrench_cb,callback_args='left',queue_size=1)
        rospy.Subscriber('/panda_right/franka_state_controller/F_ext',WrenchStamped,self.wrench_cb,callback_args='right',queue_size=1)
        self.tfbuf=tf2_ros.Buffer(rospy.Duration(5)); self.tfl=tf2_ros.TransformListener(self.tfbuf)
        self.left.connect(self.connect_timeout); self.right.connect(self.connect_timeout); self.phase='READY'; rospy.Timer(rospy.Duration(.5),lambda e:self.publish())
        rospy.loginfo('v4 master: left=%s right=%s',self.left.connected,self.right.connected)
    @staticmethod
    def load_poses(path):
        path=os.path.expanduser(path)
        if not path or not os.path.exists(path): rospy.logwarn('No taught pose file: %s',path); return {}
        with open(path) as f: return (yaml.safe_load(f) or {}).get('poses',{})
    def wrench_cb(self,m,side):
        f=m.wrench.force; t=m.wrench.torque
        fn=(f.x*f.x+f.y*f.y+f.z*f.z)**.5; tn=(t.x*t.x+t.y*t.y+t.z*t.z)**.5
        if fn>self.max_force or tn>self.max_torque:
            rospy.logerr('%s wrench limit: %.1f N %.1f Nm',side,fn,tn); self.trigger_estop('wrench limit')
    def estop_cb(self,m):
        if m.data: self.trigger_estop('operator estop')
    def trigger_estop(self,why):
        self.estop=True; self.err=why; self.phase='ESTOP'; self.left.cancel(); self.right.cancel(); self.hand('left','off'); self.hand('right','off'); self.publish()
    def hand(self,side,key):
        c=self.handmap[side].get('commands',{}).get(key,key); (self.left_hand if side=='left' else self.right_hand).publish(String(c)); rospy.loginfo('%s hand <- %s',side,c)
    def command(self,m):
        if m.command==TaskCommand.CLEAR_ESTOP: self.estop=False; self.err=''; self.phase='READY'; return
        if m.command==TaskCommand.STATUS: self.publish(); return
        if m.command==TaskCommand.STOP: self.trigger_estop('STOP command'); return
        if self.estop or self.busy: rospy.logwarn('Rejected command: estop=%s busy=%s',self.estop,self.busy); return
        self.busy=True
        try: self.run(m.command,max(0.02,min(float(m.speed_scale or .1),self.max_speed)),m.use_relative_planning)
        except Exception as e: self.err=str(e); self.phase='ERROR'; rospy.logerr('%s',e); self.left.cancel(); self.right.cancel()
        finally: self.busy=False; self.publish()
    def run(self,c,s,relative):
        seq=[c]
        if c==TaskCommand.RUN_BOTTLE_CAP_SEQUENCE: seq=[TaskCommand.HOME,TaskCommand.BOTTLE_PREGRASP,TaskCommand.BOTTLE_GRASP,TaskCommand.CAP_PREGRASP,TaskCommand.CAP_GRASP,TaskCommand.UNSCREW,TaskCommand.CAP_RETREAT]
        for x in seq:
            if self.estop: raise RuntimeError('estop during task')
            name={10:'HOME',20:'BOTTLE_PREGRASP',21:'BOTTLE_GRASP',30:'CAP_PREGRASP',31:'CAP_GRASP',32:'UNSCREW',33:'CAP_RETREAT',40:'LIFT_BOTTLE',50:'HOME'}[x]; self.phase=name
            if x==TaskCommand.BOTTLE_GRASP: self.hand('left','grasp_bottle'); rospy.sleep(self.cfg['hands']['settle_time_s'])
            elif x==TaskCommand.CAP_GRASP: self.hand('right','grasp_cap'); rospy.sleep(self.cfg['hands']['settle_time_s'])
            elif x==TaskCommand.UNSCREW: self.hand('right','unscrew'); rospy.sleep(self.cfg['hands']['settle_time_s'])
            else: self.move_pose(name,s)
        self.phase='READY'
    def move_pose(self,name,s):
        if name not in self.poses: raise RuntimeError('taught pose missing: '+name)
        p=self.poses[name]; dur=float(p.get('duration',self.cfg.get('default_duration_s',6)))/s; dur=min(max(dur,2),30); start=rospy.Time.now()+rospy.Duration(self.delay)
        goals=[]
        for k,a in [('left_arm',self.left),('right_arm',self.right)]:
            if k in p:
                if not a.connected and not a.connect(self.connect_timeout): raise RuntimeError(a.side+' action server unavailable')
                g=a.goal(p[k],dur,start); a.client.send_goal(g); goals.append(a)
        for a in goals:
            if not a.client.wait_for_result(rospy.Duration(dur+self.delay+self.margin)): raise RuntimeError(a.side+' timeout')
            r=a.client.get_result(); st=a.client.get_state()
            if st!=GoalStatus.SUCCEEDED or (r and r.error_code!=0): raise RuntimeError('%s failed state=%s code=%s text=%s'%(a.side,st,getattr(r,'error_code',None),getattr(r,'error_string','')))
    def publish(self):
        m=SystemState(); m.header.stamp=rospy.Time.now(); m.phase=self.phase; m.busy=self.busy; m.estop=self.estop; m.left_arm_connected=self.left.connected; m.right_arm_connected=self.right.connected
        m.left_hand_alive=self.left_hand.get_num_connections()>0; m.right_hand_alive=self.right_hand.get_num_connections()>0; m.last_error=self.err
        try: self.tfbuf.lookup_transform(self.cfg['frames']['world'],self.cfg['frames']['bottle'],rospy.Time(0),rospy.Duration(.05)); m.bottle_frame_valid=True
        except Exception: m.bottle_frame_valid=False
        try: self.tfbuf.lookup_transform(self.cfg['frames']['world'],self.cfg['frames']['cap_target'],rospy.Time(0),rospy.Duration(.05)); m.cap_target_valid=True
        except Exception: m.cap_target_valid=False
        self.statepub.publish(m)
if __name__=='__main__': rospy.init_node('bimanual_master_v4'); Master(); rospy.spin()
