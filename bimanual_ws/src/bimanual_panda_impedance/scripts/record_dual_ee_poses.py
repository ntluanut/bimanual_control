#!/usr/bin/env python3
import argparse, math, os, sys
from datetime import datetime
import numpy as np
import rospy, tf2_ros, tf.transformations as tft, yaml

def T_from_tf(m):
    t=m.transform.translation; q=m.transform.rotation
    T=tft.quaternion_matrix([q.x,q.y,q.z,q.w]); T[:3,3]=[t.x,t.y,t.z]; return T

def pose(T):
    q=tft.quaternion_from_matrix(T)
    return {'position':{'x':float(T[0,3]),'y':float(T[1,3]),'z':float(T[2,3])},
            'orientation':{'x':float(q[0]),'y':float(q[1]),'z':float(q[2]),'w':float(q[3])}}

def angle(a,b):
    a=np.asarray(a); b=np.asarray(b)
    return math.degrees(math.acos(np.clip(np.dot(a/np.linalg.norm(a),b/np.linalg.norm(b)),-1,1)))

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('yaml_file'); ap.add_argument('--pose-name',required=True)
    ap.add_argument('--reference-frame',default='panda_2_link0'); ap.add_argument('--left-ee-frame',default='panda_2_EE'); ap.add_argument('--right-ee-frame',default='panda_1_EE')
    ap.add_argument('--axis',choices=['x','y','z'],default='z'); ap.add_argument('--expected-distance',type=float,default=.180)
    ap.add_argument('--distance-tolerance',type=float,default=.010); ap.add_argument('--axis-tolerance-deg',type=float,default=5.0); ap.add_argument('--allow-invalid',action='store_true')
    a,rosargs=ap.parse_known_args(); rospy.init_node('record_dual_ee_poses',argv=[sys.argv[0]]+rosargs)
    b=tf2_ros.Buffer(rospy.Duration(5)); l=tf2_ros.TransformListener(b)
    L=T_from_tf(b.lookup_transform(a.reference_frame,a.left_ee_frame,rospy.Time(0),rospy.Duration(10)))
    R=T_from_tf(b.lookup_transform(a.reference_frame,a.right_ee_frame,rospy.Time(0),rospy.Duration(10)))
    rel=np.linalg.inv(L)@R; i={'x':0,'y':1,'z':2}[a.axis]; axis=L[:3,i]; d=R[:3,3]-L[:3,3]
    signed=float(d@axis); lateral=float(np.linalg.norm(d-signed*axis)); dist=float(np.linalg.norm(d)); axerr=min(angle(d,axis),angle(-d,axis)); eeerr=angle(L[:3,i],R[:3,i])
    valid=abs(abs(signed)-a.expected_distance)<=a.distance_tolerance and lateral<=a.distance_tolerance and axerr<=a.axis_tolerance_deg
    print(f'\nDistance {dist*1000:.1f} mm | axial {signed*1000:.1f} mm | lateral {lateral*1000:.1f} mm | axis error {axerr:.2f} deg | EE-axis error {eeerr:.2f} deg | {"PASS" if valid else "FAIL"}')
    if not valid and not a.allow_invalid: print('Not saved. Re-teach or use --allow-invalid.'); return 3
    if input('Type RECORD_BOTH to save: ').strip()!='RECORD_BOTH': return 4
    p=os.path.abspath(os.path.expanduser(a.yaml_file)); os.makedirs(os.path.dirname(p),exist_ok=True)
    data=yaml.safe_load(open(p)) if os.path.exists(p) else {}; data=data or {}; data.setdefault('format_version',2); data.setdefault('dual_ee_poses',{})
    data['dual_ee_poses'][a.pose_name]={'recorded_at':datetime.now().isoformat(timespec='seconds'),'reference_frame':a.reference_frame,
      'left':{'arm_id':'panda_2','ee_frame':a.left_ee_frame,'pose':pose(L)},'right':{'arm_id':'panda_1','ee_frame':a.right_ee_frame,'pose':pose(R)},
      'formation':{'axis':a.axis,'expected_distance_m':a.expected_distance,'measured_distance_m':dist,'signed_axis_distance_m':signed,'lateral_error_m':lateral,'axis_error_deg':axerr,'ee_axis_error_deg':eeerr,'valid_at_record_time':bool(valid),'T_left_right_row_major':[float(x) for x in rel.reshape(-1)]}}
    tmp=p+'.tmp'; yaml.safe_dump(data,open(tmp,'w'),sort_keys=False); os.replace(tmp,p); print('Saved',p)
if __name__=='__main__': sys.exit(main())
