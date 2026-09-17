; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude EqualityConstraintType.msg.html

(cl:defclass <EqualityConstraintType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EqualityConstraintType (<EqualityConstraintType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EqualityConstraintType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EqualityConstraintType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<EqualityConstraintType> is deprecated: use mujoco_ros_msgs-msg:EqualityConstraintType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <EqualityConstraintType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:value-val is deprecated.  Use mujoco_ros_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EqualityConstraintType>)))
    "Constants for message type '<EqualityConstraintType>"
  '((:CONNECT . 0)
    (:WELD . 1)
    (:JOINT . 2)
    (:TENDON . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EqualityConstraintType)))
    "Constants for message type 'EqualityConstraintType"
  '((:CONNECT . 0)
    (:WELD . 1)
    (:JOINT . 2)
    (:TENDON . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EqualityConstraintType>) ostream)
  "Serializes a message object of type '<EqualityConstraintType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EqualityConstraintType>) istream)
  "Deserializes a message object of type '<EqualityConstraintType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EqualityConstraintType>)))
  "Returns string type for a message object of type '<EqualityConstraintType>"
  "mujoco_ros_msgs/EqualityConstraintType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EqualityConstraintType)))
  "Returns string type for a message object of type 'EqualityConstraintType"
  "mujoco_ros_msgs/EqualityConstraintType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EqualityConstraintType>)))
  "Returns md5sum for a message object of type '<EqualityConstraintType>"
  "e70314e6b4684677c8a1025a8bc5ef88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EqualityConstraintType)))
  "Returns md5sum for a message object of type 'EqualityConstraintType"
  "e70314e6b4684677c8a1025a8bc5ef88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EqualityConstraintType>)))
  "Returns full string definition for message of type '<EqualityConstraintType>"
  (cl:format cl:nil "uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EqualityConstraintType)))
  "Returns full string definition for message of type 'EqualityConstraintType"
  (cl:format cl:nil "uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EqualityConstraintType>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EqualityConstraintType>))
  "Converts a ROS message object to a list"
  (cl:list 'EqualityConstraintType
    (cl:cons ':value (value msg))
))
