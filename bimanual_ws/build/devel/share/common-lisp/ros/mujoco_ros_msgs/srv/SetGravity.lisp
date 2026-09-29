; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude SetGravity-request.msg.html

(cl:defclass <SetGravity-request> (roslisp-msg-protocol:ros-message)
  ((admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform "")
   (gravity
    :reader gravity
    :initarg :gravity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetGravity-request (<SetGravity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGravity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGravity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetGravity-request> is deprecated: use mujoco_ros_msgs-srv:SetGravity-request instead.")))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <SetGravity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <SetGravity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:gravity-val is deprecated.  Use mujoco_ros_msgs-srv:gravity instead.")
  (gravity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGravity-request>) ostream)
  "Serializes a message object of type '<SetGravity-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'gravity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGravity-request>) istream)
  "Deserializes a message object of type '<SetGravity-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'admin_hash) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'admin_hash) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'gravity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'gravity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGravity-request>)))
  "Returns string type for a service object of type '<SetGravity-request>"
  "mujoco_ros_msgs/SetGravityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGravity-request)))
  "Returns string type for a service object of type 'SetGravity-request"
  "mujoco_ros_msgs/SetGravityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGravity-request>)))
  "Returns md5sum for a message object of type '<SetGravity-request>"
  "9b6a9279bd7e42eade7367a6875c2398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGravity-request)))
  "Returns md5sum for a message object of type 'SetGravity-request"
  "9b6a9279bd7e42eade7367a6875c2398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGravity-request>)))
  "Returns full string definition for message of type '<SetGravity-request>"
  (cl:format cl:nil "string admin_hash~%float64[3] gravity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGravity-request)))
  "Returns full string definition for message of type 'SetGravity-request"
  (cl:format cl:nil "string admin_hash~%float64[3] gravity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGravity-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'admin_hash))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gravity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGravity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGravity-request
    (cl:cons ':admin_hash (admin_hash msg))
    (cl:cons ':gravity (gravity msg))
))
;//! \htmlinclude SetGravity-response.msg.html

(cl:defclass <SetGravity-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetGravity-response (<SetGravity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGravity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGravity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetGravity-response> is deprecated: use mujoco_ros_msgs-srv:SetGravity-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetGravity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetGravity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGravity-response>) ostream)
  "Serializes a message object of type '<SetGravity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGravity-response>) istream)
  "Deserializes a message object of type '<SetGravity-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGravity-response>)))
  "Returns string type for a service object of type '<SetGravity-response>"
  "mujoco_ros_msgs/SetGravityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGravity-response)))
  "Returns string type for a service object of type 'SetGravity-response"
  "mujoco_ros_msgs/SetGravityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGravity-response>)))
  "Returns md5sum for a message object of type '<SetGravity-response>"
  "9b6a9279bd7e42eade7367a6875c2398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGravity-response)))
  "Returns md5sum for a message object of type 'SetGravity-response"
  "9b6a9279bd7e42eade7367a6875c2398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGravity-response>)))
  "Returns full string definition for message of type '<SetGravity-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGravity-response)))
  "Returns full string definition for message of type 'SetGravity-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGravity-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGravity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGravity-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGravity)))
  'SetGravity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGravity)))
  'SetGravity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGravity)))
  "Returns string type for a service object of type '<SetGravity>"
  "mujoco_ros_msgs/SetGravity")