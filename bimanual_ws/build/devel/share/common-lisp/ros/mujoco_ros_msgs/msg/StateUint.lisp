; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude StateUint.msg.html

(cl:defclass <StateUint> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass StateUint (<StateUint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateUint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateUint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<StateUint> is deprecated: use mujoco_ros_msgs-msg:StateUint instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <StateUint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:value-val is deprecated.  Use mujoco_ros_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <StateUint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:description-val is deprecated.  Use mujoco_ros_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateUint>) ostream)
  "Serializes a message object of type '<StateUint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateUint>) istream)
  "Deserializes a message object of type '<StateUint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateUint>)))
  "Returns string type for a message object of type '<StateUint>"
  "mujoco_ros_msgs/StateUint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateUint)))
  "Returns string type for a message object of type 'StateUint"
  "mujoco_ros_msgs/StateUint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateUint>)))
  "Returns md5sum for a message object of type '<StateUint>"
  "b22c55f3d359fe962b409850277d0be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateUint)))
  "Returns md5sum for a message object of type 'StateUint"
  "b22c55f3d359fe962b409850277d0be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateUint>)))
  "Returns full string definition for message of type '<StateUint>"
  (cl:format cl:nil "uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateUint)))
  "Returns full string definition for message of type 'StateUint"
  (cl:format cl:nil "uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateUint>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateUint>))
  "Converts a ROS message object to a list"
  (cl:list 'StateUint
    (cl:cons ':value (value msg))
    (cl:cons ':description (description msg))
))
