;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SetMocapState)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SetMocapState (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SETMOCAPSTATE")
  (make-package "MUJOCO_ROS_MSGS::SETMOCAPSTATE"))
(unless (find-package "MUJOCO_ROS_MSGS::SETMOCAPSTATEREQUEST")
  (make-package "MUJOCO_ROS_MSGS::SETMOCAPSTATEREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::SETMOCAPSTATERESPONSE")
  (make-package "MUJOCO_ROS_MSGS::SETMOCAPSTATERESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::SetMocapStateRequest
  :super ros::object
  :slots (_mocap_state ))

(defmethod mujoco_ros_msgs::SetMocapStateRequest
  (:init
   (&key
    ((:mocap_state __mocap_state) (instance mujoco_ros_msgs::MocapState :init))
    )
   (send-super :init)
   (setq _mocap_state __mocap_state)
   self)
  (:mocap_state
   (&rest __mocap_state)
   (if (keywordp (car __mocap_state))
       (send* _mocap_state __mocap_state)
     (progn
       (if __mocap_state (setq _mocap_state (car __mocap_state)))
       _mocap_state)))
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/MocapState _mocap_state
    (send _mocap_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/MocapState _mocap_state
       (send _mocap_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/MocapState _mocap_state
     (send _mocap_state :deserialize buf ptr-) (incf ptr- (send _mocap_state :serialization-length))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetMocapStateResponse
  :super ros::object
  :slots (_success ))

(defmethod mujoco_ros_msgs::SetMocapStateResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetMocapState
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::SetMocapState :md5sum-) "59922d272c5d8f5030a19521538c2732")
(setf (get mujoco_ros_msgs::SetMocapState :datatype-) "mujoco_ros_msgs/SetMocapState")
(setf (get mujoco_ros_msgs::SetMocapState :request) mujoco_ros_msgs::SetMocapStateRequest)
(setf (get mujoco_ros_msgs::SetMocapState :response) mujoco_ros_msgs::SetMocapStateResponse)

(defmethod mujoco_ros_msgs::SetMocapStateRequest
  (:response () (instance mujoco_ros_msgs::SetMocapStateResponse :init)))

(setf (get mujoco_ros_msgs::SetMocapStateRequest :md5sum-) "59922d272c5d8f5030a19521538c2732")
(setf (get mujoco_ros_msgs::SetMocapStateRequest :datatype-) "mujoco_ros_msgs/SetMocapStateRequest")
(setf (get mujoco_ros_msgs::SetMocapStateRequest :definition-)
      "mujoco_ros_msgs/MocapState mocap_state

================================================================================
MSG: mujoco_ros_msgs/MocapState
string[] name
geometry_msgs/PoseStamped[] pose

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
---
bool success

")

(setf (get mujoco_ros_msgs::SetMocapStateResponse :md5sum-) "59922d272c5d8f5030a19521538c2732")
(setf (get mujoco_ros_msgs::SetMocapStateResponse :datatype-) "mujoco_ros_msgs/SetMocapStateResponse")
(setf (get mujoco_ros_msgs::SetMocapStateResponse :definition-)
      "mujoco_ros_msgs/MocapState mocap_state

================================================================================
MSG: mujoco_ros_msgs/MocapState
string[] name
geometry_msgs/PoseStamped[] pose

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
---
bool success

")



(provide :mujoco_ros_msgs/SetMocapState "59922d272c5d8f5030a19521538c2732")


