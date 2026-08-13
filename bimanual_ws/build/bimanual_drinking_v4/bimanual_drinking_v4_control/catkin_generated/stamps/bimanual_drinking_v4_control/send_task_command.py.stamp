#!/usr/bin/env python3
import sys,rospy
from bimanual_drinking_v4_msgs.msg import TaskCommand
M={'STATUS':0,'CLEAR_ESTOP':1,'STOP':2,'HOME':10,'BOTTLE_PREGRASP':20,'BOTTLE_GRASP':21,'CAP_PREGRASP':30,'CAP_GRASP':31,'UNSCREW':32,'CAP_RETREAT':33,'LIFT_BOTTLE':40,'RETURN_HOME':50,'RUN_BOTTLE_CAP_SEQUENCE':100}
if __name__=='__main__':
 rospy.init_node('send_task_command_v4',anonymous=True)
 if len(sys.argv)<2 or sys.argv[1].upper() not in M: raise SystemExit('usage: send_task_command.py '+ '|'.join(M))
 pub=rospy.Publisher('/bimanual_master_v4/command',TaskCommand,queue_size=1,latch=True); rospy.sleep(.5); m=TaskCommand(); m.header.stamp=rospy.Time.now(); m.command=M[sys.argv[1].upper()]; m.speed_scale=float(sys.argv[2]) if len(sys.argv)>2 else .1; m.use_relative_planning=False; pub.publish(m); rospy.sleep(.5)
