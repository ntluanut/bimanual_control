; Auto-generated. Do not edit!


(cl:in-package bimanual_drinking_v5_msgs-msg)


;//! \htmlinclude SystemState.msg.html

(cl:defclass <SystemState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (phase
    :reader phase
    :initarg :phase
    :type cl:string
    :initform "")
   (busy
    :reader busy
    :initarg :busy
    :type cl:boolean
    :initform cl:nil)
   (estop
    :reader estop
    :initarg :estop
    :type cl:boolean
    :initform cl:nil)
   (moveit_ready
    :reader moveit_ready
    :initarg :moveit_ready
    :type cl:boolean
    :initform cl:nil)
   (bottle_attached
    :reader bottle_attached
    :initarg :bottle_attached
    :type cl:boolean
    :initform cl:nil)
   (left_hand_alive
    :reader left_hand_alive
    :initarg :left_hand_alive
    :type cl:boolean
    :initform cl:nil)
   (right_hand_alive
    :reader right_hand_alive
    :initarg :right_hand_alive
    :type cl:boolean
    :initform cl:nil)
   (left_hand_settled
    :reader left_hand_settled
    :initarg :left_hand_settled
    :type cl:boolean
    :initform cl:nil)
   (right_hand_settled
    :reader right_hand_settled
    :initarg :right_hand_settled
    :type cl:boolean
    :initform cl:nil)
   (last_error
    :reader last_error
    :initarg :last_error
    :type cl:string
    :initform ""))
)

(cl:defclass SystemState (<SystemState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bimanual_drinking_v5_msgs-msg:<SystemState> is deprecated: use bimanual_drinking_v5_msgs-msg:SystemState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:header-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:phase-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'busy-val :lambda-list '(m))
(cl:defmethod busy-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:busy-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:busy instead.")
  (busy m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:estop-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'moveit_ready-val :lambda-list '(m))
(cl:defmethod moveit_ready-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:moveit_ready-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:moveit_ready instead.")
  (moveit_ready m))

(cl:ensure-generic-function 'bottle_attached-val :lambda-list '(m))
(cl:defmethod bottle_attached-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:bottle_attached-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:bottle_attached instead.")
  (bottle_attached m))

(cl:ensure-generic-function 'left_hand_alive-val :lambda-list '(m))
(cl:defmethod left_hand_alive-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:left_hand_alive-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:left_hand_alive instead.")
  (left_hand_alive m))

(cl:ensure-generic-function 'right_hand_alive-val :lambda-list '(m))
(cl:defmethod right_hand_alive-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:right_hand_alive-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:right_hand_alive instead.")
  (right_hand_alive m))

(cl:ensure-generic-function 'left_hand_settled-val :lambda-list '(m))
(cl:defmethod left_hand_settled-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:left_hand_settled-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:left_hand_settled instead.")
  (left_hand_settled m))

(cl:ensure-generic-function 'right_hand_settled-val :lambda-list '(m))
(cl:defmethod right_hand_settled-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:right_hand_settled-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:right_hand_settled instead.")
  (right_hand_settled m))

(cl:ensure-generic-function 'last_error-val :lambda-list '(m))
(cl:defmethod last_error-val ((m <SystemState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bimanual_drinking_v5_msgs-msg:last_error-val is deprecated.  Use bimanual_drinking_v5_msgs-msg:last_error instead.")
  (last_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemState>) ostream)
  "Serializes a message object of type '<SystemState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'phase))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'busy) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moveit_ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bottle_attached) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_hand_alive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_hand_alive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_hand_settled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_hand_settled) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemState>) istream)
  "Deserializes a message object of type '<SystemState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'phase) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'phase) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'busy) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'moveit_ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bottle_attached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_hand_alive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_hand_alive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_hand_settled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_hand_settled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemState>)))
  "Returns string type for a message object of type '<SystemState>"
  "bimanual_drinking_v5_msgs/SystemState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemState)))
  "Returns string type for a message object of type 'SystemState"
  "bimanual_drinking_v5_msgs/SystemState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemState>)))
  "Returns md5sum for a message object of type '<SystemState>"
  "7092e774a948ee80cb8059d5afed3515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemState)))
  "Returns md5sum for a message object of type 'SystemState"
  "7092e774a948ee80cb8059d5afed3515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemState>)))
  "Returns full string definition for message of type '<SystemState>"
  (cl:format cl:nil "std_msgs/Header header~%string phase~%bool busy~%bool estop~%bool moveit_ready~%bool bottle_attached~%bool left_hand_alive~%bool right_hand_alive~%bool left_hand_settled~%bool right_hand_settled~%string last_error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemState)))
  "Returns full string definition for message of type 'SystemState"
  (cl:format cl:nil "std_msgs/Header header~%string phase~%bool busy~%bool estop~%bool moveit_ready~%bool bottle_attached~%bool left_hand_alive~%bool right_hand_alive~%bool left_hand_settled~%bool right_hand_settled~%string last_error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'phase))
     1
     1
     1
     1
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'last_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemState>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemState
    (cl:cons ':header (header msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':busy (busy msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':moveit_ready (moveit_ready msg))
    (cl:cons ':bottle_attached (bottle_attached msg))
    (cl:cons ':left_hand_alive (left_hand_alive msg))
    (cl:cons ':right_hand_alive (right_hand_alive msg))
    (cl:cons ':left_hand_settled (left_hand_settled msg))
    (cl:cons ':right_hand_settled (right_hand_settled msg))
    (cl:cons ':last_error (last_error msg))
))
