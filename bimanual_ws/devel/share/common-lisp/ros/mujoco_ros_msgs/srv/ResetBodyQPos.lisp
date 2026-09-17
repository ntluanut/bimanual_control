; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude ResetBodyQPos-request.msg.html

(cl:defclass <ResetBodyQPos-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass ResetBodyQPos-request (<ResetBodyQPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetBodyQPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetBodyQPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<ResetBodyQPos-request> is deprecated: use mujoco_ros_msgs-srv:ResetBodyQPos-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ResetBodyQPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:name-val is deprecated.  Use mujoco_ros_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <ResetBodyQPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetBodyQPos-request>) ostream)
  "Serializes a message object of type '<ResetBodyQPos-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetBodyQPos-request>) istream)
  "Deserializes a message object of type '<ResetBodyQPos-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetBodyQPos-request>)))
  "Returns string type for a service object of type '<ResetBodyQPos-request>"
  "mujoco_ros_msgs/ResetBodyQPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetBodyQPos-request)))
  "Returns string type for a service object of type 'ResetBodyQPos-request"
  "mujoco_ros_msgs/ResetBodyQPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetBodyQPos-request>)))
  "Returns md5sum for a message object of type '<ResetBodyQPos-request>"
  "a5102c837d3e894714b27aecbae54380")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetBodyQPos-request)))
  "Returns md5sum for a message object of type 'ResetBodyQPos-request"
  "a5102c837d3e894714b27aecbae54380")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetBodyQPos-request>)))
  "Returns full string definition for message of type '<ResetBodyQPos-request>"
  (cl:format cl:nil "string name~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetBodyQPos-request)))
  "Returns full string definition for message of type 'ResetBodyQPos-request"
  (cl:format cl:nil "string name~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetBodyQPos-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetBodyQPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetBodyQPos-request
    (cl:cons ':name (name msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude ResetBodyQPos-response.msg.html

(cl:defclass <ResetBodyQPos-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ResetBodyQPos-response (<ResetBodyQPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetBodyQPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetBodyQPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<ResetBodyQPos-response> is deprecated: use mujoco_ros_msgs-srv:ResetBodyQPos-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetBodyQPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <ResetBodyQPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetBodyQPos-response>) ostream)
  "Serializes a message object of type '<ResetBodyQPos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetBodyQPos-response>) istream)
  "Deserializes a message object of type '<ResetBodyQPos-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetBodyQPos-response>)))
  "Returns string type for a service object of type '<ResetBodyQPos-response>"
  "mujoco_ros_msgs/ResetBodyQPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetBodyQPos-response)))
  "Returns string type for a service object of type 'ResetBodyQPos-response"
  "mujoco_ros_msgs/ResetBodyQPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetBodyQPos-response>)))
  "Returns md5sum for a message object of type '<ResetBodyQPos-response>"
  "a5102c837d3e894714b27aecbae54380")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetBodyQPos-response)))
  "Returns md5sum for a message object of type 'ResetBodyQPos-response"
  "a5102c837d3e894714b27aecbae54380")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetBodyQPos-response>)))
  "Returns full string definition for message of type '<ResetBodyQPos-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetBodyQPos-response)))
  "Returns full string definition for message of type 'ResetBodyQPos-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetBodyQPos-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetBodyQPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetBodyQPos-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetBodyQPos)))
  'ResetBodyQPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetBodyQPos)))
  'ResetBodyQPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetBodyQPos)))
  "Returns string type for a service object of type '<ResetBodyQPos>"
  "mujoco_ros_msgs/ResetBodyQPos")