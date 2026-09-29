; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude GetGravity-request.msg.html

(cl:defclass <GetGravity-request> (roslisp-msg-protocol:ros-message)
  ((admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass GetGravity-request (<GetGravity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGravity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGravity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetGravity-request> is deprecated: use mujoco_ros_msgs-srv:GetGravity-request instead.")))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <GetGravity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGravity-request>) ostream)
  "Serializes a message object of type '<GetGravity-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGravity-request>) istream)
  "Deserializes a message object of type '<GetGravity-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGravity-request>)))
  "Returns string type for a service object of type '<GetGravity-request>"
  "mujoco_ros_msgs/GetGravityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGravity-request)))
  "Returns string type for a service object of type 'GetGravity-request"
  "mujoco_ros_msgs/GetGravityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGravity-request>)))
  "Returns md5sum for a message object of type '<GetGravity-request>"
  "0eb542bfe5118c877d3ecf5ee3b1b29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGravity-request)))
  "Returns md5sum for a message object of type 'GetGravity-request"
  "0eb542bfe5118c877d3ecf5ee3b1b29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGravity-request>)))
  "Returns full string definition for message of type '<GetGravity-request>"
  (cl:format cl:nil "string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGravity-request)))
  "Returns full string definition for message of type 'GetGravity-request"
  (cl:format cl:nil "string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGravity-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGravity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGravity-request
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude GetGravity-response.msg.html

(cl:defclass <GetGravity-response> (roslisp-msg-protocol:ros-message)
  ((gravity
    :reader gravity
    :initarg :gravity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (success
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

(cl:defclass GetGravity-response (<GetGravity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGravity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGravity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetGravity-response> is deprecated: use mujoco_ros_msgs-srv:GetGravity-response instead.")))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <GetGravity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:gravity-val is deprecated.  Use mujoco_ros_msgs-srv:gravity instead.")
  (gravity m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetGravity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetGravity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGravity-response>) ostream)
  "Serializes a message object of type '<GetGravity-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGravity-response>) istream)
  "Deserializes a message object of type '<GetGravity-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGravity-response>)))
  "Returns string type for a service object of type '<GetGravity-response>"
  "mujoco_ros_msgs/GetGravityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGravity-response)))
  "Returns string type for a service object of type 'GetGravity-response"
  "mujoco_ros_msgs/GetGravityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGravity-response>)))
  "Returns md5sum for a message object of type '<GetGravity-response>"
  "0eb542bfe5118c877d3ecf5ee3b1b29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGravity-response)))
  "Returns md5sum for a message object of type 'GetGravity-response"
  "0eb542bfe5118c877d3ecf5ee3b1b29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGravity-response>)))
  "Returns full string definition for message of type '<GetGravity-response>"
  (cl:format cl:nil "float64[3] gravity~%bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGravity-response)))
  "Returns full string definition for message of type 'GetGravity-response"
  (cl:format cl:nil "float64[3] gravity~%bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGravity-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gravity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGravity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGravity-response
    (cl:cons ':gravity (gravity msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGravity)))
  'GetGravity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGravity)))
  'GetGravity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGravity)))
  "Returns string type for a service object of type '<GetGravity>"
  "mujoco_ros_msgs/GetGravity")