; Auto-generated. Do not edit!


(cl:in-package bimanual_drinking_v4_msgs-msg)


;//! \htmlinclude TaskCommand.msg.html

(cl:defclass <TaskCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (speed_scale
    :reader speed_scale
    :initarg :speed_scale
    :type cl:float
    :initform 0.0)
   (use_relative_planning
    :reader use_relative_planning
    :initarg :use_relative_planning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TaskCommand (<TaskCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bimanual_drinking_v4_msgs-msg:<TaskCommand> is deprecated: use bimanual_drinking_v4_msgs-msg:TaskCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TaskCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v4_msgs-msg:header-val is deprecated.  Use bimanual_drinking_v4_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <TaskCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v4_msgs-msg:command-val is deprecated.  Use bimanual_drinking_v4_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'speed_scale-val :lambda-list '(m))
(cl:defmethod speed_scale-val ((m <TaskCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v4_msgs-msg:speed_scale-val is deprecated.  Use bimanual_drinking_v4_msgs-msg:speed_scale instead.")
  (speed_scale m))

(cl:ensure-generic-function 'use_relative_planning-val :lambda-list '(m))
(cl:defmethod use_relative_planning-val ((m <TaskCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v4_msgs-msg:use_relative_planning-val is deprecated.  Use bimanual_drinking_v4_msgs-msg:use_relative_planning instead.")
  (use_relative_planning m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskCommand>)))
    "Constants for message type '<TaskCommand>"
  '((:STATUS . 0)
    (:CLEAR_ESTOP . 1)
    (:STOP . 2)
    (:HOME . 10)
    (:BOTTLE_PREGRASP . 20)
    (:BOTTLE_GRASP . 21)
    (:CAP_PREGRASP . 30)
    (:CAP_GRASP . 31)
    (:UNSCREW . 32)
    (:CAP_RETREAT . 33)
    (:LIFT_BOTTLE . 40)
    (:RETURN_HOME . 50)
    (:RUN_BOTTLE_CAP_SEQUENCE . 100))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskCommand)))
    "Constants for message type 'TaskCommand"
  '((:STATUS . 0)
    (:CLEAR_ESTOP . 1)
    (:STOP . 2)
    (:HOME . 10)
    (:BOTTLE_PREGRASP . 20)
    (:BOTTLE_GRASP . 21)
    (:CAP_PREGRASP . 30)
    (:CAP_GRASP . 31)
    (:UNSCREW . 32)
    (:CAP_RETREAT . 33)
    (:LIFT_BOTTLE . 40)
    (:RETURN_HOME . 50)
    (:RUN_BOTTLE_CAP_SEQUENCE . 100))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskCommand>) ostream)
  "Serializes a message object of type '<TaskCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_relative_planning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskCommand>) istream)
  "Deserializes a message object of type '<TaskCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_scale) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_relative_planning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskCommand>)))
  "Returns string type for a message object of type '<TaskCommand>"
  "bimanual_drinking_v4_msgs/TaskCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskCommand)))
  "Returns string type for a message object of type 'TaskCommand"
  "bimanual_drinking_v4_msgs/TaskCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskCommand>)))
  "Returns md5sum for a message object of type '<TaskCommand>"
  "17bd5cd1727d685e66c27d5606d0e4d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskCommand)))
  "Returns md5sum for a message object of type 'TaskCommand"
  "17bd5cd1727d685e66c27d5606d0e4d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskCommand>)))
  "Returns full string definition for message of type '<TaskCommand>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 STATUS=0~%uint8 CLEAR_ESTOP=1~%uint8 STOP=2~%uint8 HOME=10~%uint8 BOTTLE_PREGRASP=20~%uint8 BOTTLE_GRASP=21~%uint8 CAP_PREGRASP=30~%uint8 CAP_GRASP=31~%uint8 UNSCREW=32~%uint8 CAP_RETREAT=33~%uint8 LIFT_BOTTLE=40~%uint8 RETURN_HOME=50~%uint8 RUN_BOTTLE_CAP_SEQUENCE=100~%uint8 command~%float32 speed_scale~%bool use_relative_planning~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskCommand)))
  "Returns full string definition for message of type 'TaskCommand"
  (cl:format cl:nil "std_msgs/Header header~%uint8 STATUS=0~%uint8 CLEAR_ESTOP=1~%uint8 STOP=2~%uint8 HOME=10~%uint8 BOTTLE_PREGRASP=20~%uint8 BOTTLE_GRASP=21~%uint8 CAP_PREGRASP=30~%uint8 CAP_GRASP=31~%uint8 UNSCREW=32~%uint8 CAP_RETREAT=33~%uint8 LIFT_BOTTLE=40~%uint8 RETURN_HOME=50~%uint8 RUN_BOTTLE_CAP_SEQUENCE=100~%uint8 command~%float32 speed_scale~%bool use_relative_planning~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskCommand
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
    (cl:cons ':speed_scale (speed_scale msg))
    (cl:cons ':use_relative_planning (use_relative_planning msg))
))
