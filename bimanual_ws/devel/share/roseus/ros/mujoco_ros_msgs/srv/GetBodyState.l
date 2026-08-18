;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetBodyState)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetBodyState (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETBODYSTATE")
  (make-package "MUJOCO_ROS_MSGS::GETBODYSTATE"))
(unless (find-package "MUJOCO_ROS_MSGS::GETBODYSTATEREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETBODYSTATEREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETBODYSTATERESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETBODYSTATERESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetBodyStateRequest
  :super ros::object
  :slots (_name _admin_hash ))

(defmethod mujoco_ros_msgs::GetBodyStateRequest
  (:init
   (&key
    ((:name __name) "")
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _admin_hash (string __admin_hash))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetBodyStateResponse
  :super ros::object
  :slots (_state _success _status_message ))

(defmethod mujoco_ros_msgs::GetBodyStateResponse
  (:init
   (&key
    ((:state __state) (instance mujoco_ros_msgs::BodyState :init))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _state __state)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/BodyState _state
    (send _state :serialization-length)
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/BodyState _state
       (send _state :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/BodyState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetBodyState
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetBodyState :md5sum-) "0322b483548cedc01d60d344a6aee68f")
(setf (get mujoco_ros_msgs::GetBodyState :datatype-) "mujoco_ros_msgs/GetBodyState")
(setf (get mujoco_ros_msgs::GetBodyState :request) mujoco_ros_msgs::GetBodyStateRequest)
(setf (get mujoco_ros_msgs::GetBodyState :response) mujoco_ros_msgs::GetBodyStateResponse)

(defmethod mujoco_ros_msgs::GetBodyStateRequest
  (:response () (instance mujoco_ros_msgs::GetBodyStateResponse :init)))

(setf (get mujoco_ros_msgs::GetBodyStateRequest :md5sum-) "0322b483548cedc01d60d344a6aee68f")
(setf (get mujoco_ros_msgs::GetBodyStateRequest :datatype-) "mujoco_ros_msgs/GetBodyStateRequest")
(setf (get mujoco_ros_msgs::GetBodyStateRequest :definition-)
      "string name
string admin_hash
---
mujoco_ros_msgs/BodyState state
bool success
string status_message


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
")

(setf (get mujoco_ros_msgs::GetBodyStateResponse :md5sum-) "0322b483548cedc01d60d344a6aee68f")
(setf (get mujoco_ros_msgs::GetBodyStateResponse :datatype-) "mujoco_ros_msgs/GetBodyStateResponse")
(setf (get mujoco_ros_msgs::GetBodyStateResponse :definition-)
      "string name
string admin_hash
---
mujoco_ros_msgs/BodyState state
bool success
string status_message


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
")



(provide :mujoco_ros_msgs/GetBodyState "0322b483548cedc01d60d344a6aee68f")


