; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude SetBodyState-request.msg.html

(cl:defclass <SetBodyState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type mujoco_ros_msgs-msg:BodyState
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:BodyState))
   (set_pose
    :reader set_pose
    :initarg :set_pose
    :type cl:boolean
    :initform cl:nil)
   (set_twist
    :reader set_twist
    :initarg :set_twist
    :type cl:boolean
    :initform cl:nil)
   (set_mass
    :reader set_mass
    :initarg :set_mass
    :type cl:boolean
    :initform cl:nil)
   (reset_qpos
    :reader reset_qpos
    :initarg :reset_qpos
    :type cl:boolean
    :initform cl:nil)
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass SetBodyState-request (<SetBodyState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBodyState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBodyState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetBodyState-request> is deprecated: use mujoco_ros_msgs-srv:SetBodyState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetBodyState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:state-val is deprecated.  Use mujoco_ros_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'set_pose-val :lambda-list '(m))
(cl:defmethod set_pose-val ((m <SetBodyState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_pose-val is deprecated.  Use mujoco_ros_msgs-srv:set_pose instead.")
  (set_pose m))

(cl:ensure-generic-function 'set_twist-val :lambda-list '(m))
(cl:defmethod set_twist-val ((m <SetBodyState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_twist-val is deprecated.  Use mujoco_ros_msgs-srv:set_twist instead.")
  (set_twist m))

(cl:ensure-generic-function 'set_mass-val :lambda-list '(m))
(cl:defmethod set_mass-val ((m <SetBodyState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_mass-val is deprecated.  Use mujoco_ros_msgs-srv:set_mass instead.")
  (set_mass m))

(cl:ensure-generic-function 'reset_qpos-val :lambda-list '(m))
(cl:defmethod reset_qpos-val ((m <SetBodyState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:reset_qpos-val is deprecated.  Use mujoco_ros_msgs-srv:reset_qpos instead.")
  (reset_qpos m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <SetBodyState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBodyState-request>) ostream)
  "Serializes a message object of type '<SetBodyState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_pose) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_twist) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_mass) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_qpos) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBodyState-request>) istream)
  "Deserializes a message object of type '<SetBodyState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:setf (cl:slot-value msg 'set_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_twist) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_mass) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_qpos) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'admin_hash) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'admin_hash) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBodyState-request>)))
  "Returns string type for a service object of type '<SetBodyState-request>"
  "mujoco_ros_msgs/SetBodyStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBodyState-request)))
  "Returns string type for a service object of type 'SetBodyState-request"
  "mujoco_ros_msgs/SetBodyStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBodyState-request>)))
  "Returns md5sum for a message object of type '<SetBodyState-request>"
  "dca3e244d1ac24ae8650b204afd0c666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBodyState-request)))
  "Returns md5sum for a message object of type 'SetBodyState-request"
  "dca3e244d1ac24ae8650b204afd0c666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBodyState-request>)))
  "Returns full string definition for message of type '<SetBodyState-request>"
  (cl:format cl:nil "mujoco_ros_msgs/BodyState state~%bool set_pose~%bool set_twist~%bool set_mass~%bool reset_qpos~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/BodyState~%string name                 # this can either be the body name or name of a geom belongig to the body.~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%float32 mass~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBodyState-request)))
  "Returns full string definition for message of type 'SetBodyState-request"
  (cl:format cl:nil "mujoco_ros_msgs/BodyState state~%bool set_pose~%bool set_twist~%bool set_mass~%bool reset_qpos~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/BodyState~%string name                 # this can either be the body name or name of a geom belongig to the body.~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%float32 mass~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBodyState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBodyState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBodyState-request
    (cl:cons ':state (state msg))
    (cl:cons ':set_pose (set_pose msg))
    (cl:cons ':set_twist (set_twist msg))
    (cl:cons ':set_mass (set_mass msg))
    (cl:cons ':reset_qpos (reset_qpos msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude SetBodyState-response.msg.html

(cl:defclass <SetBodyState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass SetBodyState-response (<SetBodyState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBodyState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBodyState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetBodyState-response> is deprecated: use mujoco_ros_msgs-srv:SetBodyState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetBodyState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetBodyState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBodyState-response>) ostream)
  "Serializes a message object of type '<SetBodyState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBodyState-response>) istream)
  "Deserializes a message object of type '<SetBodyState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBodyState-response>)))
  "Returns string type for a service object of type '<SetBodyState-response>"
  "mujoco_ros_msgs/SetBodyStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBodyState-response)))
  "Returns string type for a service object of type 'SetBodyState-response"
  "mujoco_ros_msgs/SetBodyStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBodyState-response>)))
  "Returns md5sum for a message object of type '<SetBodyState-response>"
  "dca3e244d1ac24ae8650b204afd0c666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBodyState-response)))
  "Returns md5sum for a message object of type 'SetBodyState-response"
  "dca3e244d1ac24ae8650b204afd0c666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBodyState-response>)))
  "Returns full string definition for message of type '<SetBodyState-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBodyState-response)))
  "Returns full string definition for message of type 'SetBodyState-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBodyState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBodyState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBodyState-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBodyState)))
  'SetBodyState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBodyState)))
  'SetBodyState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBodyState)))
  "Returns string type for a service object of type '<SetBodyState>"
  "mujoco_ros_msgs/SetBodyState")