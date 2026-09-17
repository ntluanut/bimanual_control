;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SetBodyState)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SetBodyState (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SETBODYSTATE")
  (make-package "MUJOCO_ROS_MSGS::SETBODYSTATE"))
(unless (find-package "MUJOCO_ROS_MSGS::SETBODYSTATEREQUEST")
  (make-package "MUJOCO_ROS_MSGS::SETBODYSTATEREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::SETBODYSTATERESPONSE")
  (make-package "MUJOCO_ROS_MSGS::SETBODYSTATERESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::SetBodyStateRequest
  :super ros::object
  :slots (_state _set_pose _set_twist _set_mass _reset_qpos _admin_hash ))

(defmethod mujoco_ros_msgs::SetBodyStateRequest
  (:init
   (&key
    ((:state __state) (instance mujoco_ros_msgs::BodyState :init))
    ((:set_pose __set_pose) nil)
    ((:set_twist __set_twist) nil)
    ((:set_mass __set_mass) nil)
    ((:reset_qpos __reset_qpos) nil)
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _state __state)
   (setq _set_pose __set_pose)
   (setq _set_twist __set_twist)
   (setq _set_mass __set_mass)
   (setq _reset_qpos __reset_qpos)
   (setq _admin_hash (string __admin_hash))
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:set_pose
   (&optional (__set_pose :null))
   (if (not (eq __set_pose :null)) (setq _set_pose __set_pose)) _set_pose)
  (:set_twist
   (&optional (__set_twist :null))
   (if (not (eq __set_twist :null)) (setq _set_twist __set_twist)) _set_twist)
  (:set_mass
   (&optional (__set_mass :null))
   (if (not (eq __set_mass :null)) (setq _set_mass __set_mass)) _set_mass)
  (:reset_qpos
   (&optional (__reset_qpos :null))
   (if (not (eq __reset_qpos :null)) (setq _reset_qpos __reset_qpos)) _reset_qpos)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/BodyState _state
    (send _state :serialization-length)
    ;; bool _set_pose
    1
    ;; bool _set_twist
    1
    ;; bool _set_mass
    1
    ;; bool _reset_qpos
    1
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/BodyState _state
       (send _state :serialize s)
     ;; bool _set_pose
       (if _set_pose (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_twist
       (if _set_twist (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_mass
       (if _set_mass (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_qpos
       (if _reset_qpos (write-byte -1 s) (write-byte 0 s))
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/BodyState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; bool _set_pose
     (setq _set_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_twist
     (setq _set_twist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_mass
     (setq _set_mass (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_qpos
     (setq _reset_qpos (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetBodyStateResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod mujoco_ros_msgs::SetBodyStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetBodyState
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::SetBodyState :md5sum-) "dca3e244d1ac24ae8650b204afd0c666")
(setf (get mujoco_ros_msgs::SetBodyState :datatype-) "mujoco_ros_msgs/SetBodyState")
(setf (get mujoco_ros_msgs::SetBodyState :request) mujoco_ros_msgs::SetBodyStateRequest)
(setf (get mujoco_ros_msgs::SetBodyState :response) mujoco_ros_msgs::SetBodyStateResponse)

(defmethod mujoco_ros_msgs::SetBodyStateRequest
  (:response () (instance mujoco_ros_msgs::SetBodyStateResponse :init)))

(setf (get mujoco_ros_msgs::SetBodyStateRequest :md5sum-) "dca3e244d1ac24ae8650b204afd0c666")
(setf (get mujoco_ros_msgs::SetBodyStateRequest :datatype-) "mujoco_ros_msgs/SetBodyStateRequest")
(setf (get mujoco_ros_msgs::SetBodyStateRequest :definition-)
      "mujoco_ros_msgs/BodyState state
bool set_pose
bool set_twist
bool set_mass
bool reset_qpos
string admin_hash

================================================================================
MSG: mujoco_ros_msgs/BodyState
string name                 # this can either be the body name or name of a geom belongig to the body.
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
float32 mass

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3 linear
Vector3 angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string status_message

")

(setf (get mujoco_ros_msgs::SetBodyStateResponse :md5sum-) "dca3e244d1ac24ae8650b204afd0c666")
(setf (get mujoco_ros_msgs::SetBodyStateResponse :datatype-) "mujoco_ros_msgs/SetBodyStateResponse")
(setf (get mujoco_ros_msgs::SetBodyStateResponse :definition-)
      "mujoco_ros_msgs/BodyState state
bool set_pose
bool set_twist
bool set_mass
bool reset_qpos
string admin_hash

================================================================================
MSG: mujoco_ros_msgs/BodyState
string name                 # this can either be the body name or name of a geom belongig to the body.
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
float32 mass

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3 linear
Vector3 angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string status_message

")



(provide :mujoco_ros_msgs/SetBodyState "dca3e244d1ac24ae8650b204afd0c666")


