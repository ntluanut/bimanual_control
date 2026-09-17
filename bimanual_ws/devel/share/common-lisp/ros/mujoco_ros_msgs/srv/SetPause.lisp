; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude SetPause-request.msg.html

(cl:defclass <SetPause-request> (roslisp-msg-protocol:ros-message)
  ((paused
    :reader paused
    :initarg :paused
    :type cl:boolean
    :initform cl:nil)
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass SetPause-request (<SetPause-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPause-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPause-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetPause-request> is deprecated: use mujoco_ros_msgs-srv:SetPause-request instead.")))

(cl:ensure-generic-function 'paused-val :lambda-list '(m))
(cl:defmethod paused-val ((m <SetPause-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:paused-val is deprecated.  Use mujoco_ros_msgs-srv:paused instead.")
  (paused m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <SetPause-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPause-request>) ostream)
  "Serializes a message object of type '<SetPause-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'paused) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPause-request>) istream)
  "Deserializes a message object of type '<SetPause-request>"
    (cl:setf (cl:slot-value msg 'paused) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPause-request>)))
  "Returns string type for a service object of type '<SetPause-request>"
  "mujoco_ros_msgs/SetPauseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPause-request)))
  "Returns string type for a service object of type 'SetPause-request"
  "mujoco_ros_msgs/SetPauseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPause-request>)))
  "Returns md5sum for a message object of type '<SetPause-request>"
  "b3b6340c1a873657e7d239a0abbde573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPause-request)))
  "Returns md5sum for a message object of type 'SetPause-request"
  "b3b6340c1a873657e7d239a0abbde573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPause-request>)))
  "Returns full string definition for message of type '<SetPause-request>"
  (cl:format cl:nil "bool paused~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPause-request)))
  "Returns full string definition for message of type 'SetPause-request"
  (cl:format cl:nil "bool paused~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPause-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPause-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPause-request
    (cl:cons ':paused (paused msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude SetPause-response.msg.html

(cl:defclass <SetPause-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPause-response (<SetPause-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPause-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPause-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetPause-response> is deprecated: use mujoco_ros_msgs-srv:SetPause-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPause-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPause-response>) ostream)
  "Serializes a message object of type '<SetPause-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPause-response>) istream)
  "Deserializes a message object of type '<SetPause-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPause-response>)))
  "Returns string type for a service object of type '<SetPause-response>"
  "mujoco_ros_msgs/SetPauseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPause-response)))
  "Returns string type for a service object of type 'SetPause-response"
  "mujoco_ros_msgs/SetPauseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPause-response>)))
  "Returns md5sum for a message object of type '<SetPause-response>"
  "b3b6340c1a873657e7d239a0abbde573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPause-response)))
  "Returns md5sum for a message object of type 'SetPause-response"
  "b3b6340c1a873657e7d239a0abbde573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPause-response>)))
  "Returns full string definition for message of type '<SetPause-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPause-response)))
  "Returns full string definition for message of type 'SetPause-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPause-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPause-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPause-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPause)))
  'SetPause-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPause)))
  'SetPause-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPause)))
  "Returns string type for a service object of type '<SetPause>"
  "mujoco_ros_msgs/SetPause")