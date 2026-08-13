#!/usr/bin/env python3
import sys, rospy
from bimanual_drinking_v5_msgs.msg import TaskCommand
MAP={'STATUS':0,'STOP':1,'CLEAR_ESTOP':2,'HOME_HANDS':3,'RUN':10}
rospy.init_node('send_task_v5',anonymous=True); p=rospy.Publisher('/bimanual_master_v5/command',TaskCommand,queue_size=1,latch=True); rospy.sleep(.5)
name=sys.argv[1].upper() if len(sys.argv)>1 else 'STATUS'; m=TaskCommand(); m.command=MAP[name]; m.speed_scale=float(sys.argv[2]) if len(sys.argv)>2 else .05; m.plan_only=('--plan-only' in sys.argv); p.publish(m); rospy.sleep(.5)
