; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude GeomType.msg.html

(cl:defclass <GeomType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GeomType (<GeomType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeomType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeomType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<GeomType> is deprecated: use mujoco_ros_msgs-msg:GeomType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GeomType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:value-val is deprecated.  Use mujoco_ros_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GeomType>)))
    "Constants for message type '<GeomType>"
  '((:PLANE . 0)
    (:HFIELD . 1)
    (:SPHERE . 2)
    (:CAPSULE . 3)
    (:ELLIPSOID . 4)
    (:CYLINDER . 5)
    (:BOX . 6)
    (:MESH . 7)
    (:GEOM_NONE . 1001))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GeomType)))
    "Constants for message type 'GeomType"
  '((:PLANE . 0)
    (:HFIELD . 1)
    (:SPHERE . 2)
    (:CAPSULE . 3)
    (:ELLIPSOID . 4)
    (:CYLINDER . 5)
    (:BOX . 6)
    (:MESH . 7)
    (:GEOM_NONE . 1001))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeomType>) ostream)
  "Serializes a message object of type '<GeomType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeomType>) istream)
  "Deserializes a message object of type '<GeomType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeomType>)))
  "Returns string type for a message object of type '<GeomType>"
  "mujoco_ros_msgs/GeomType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeomType)))
  "Returns string type for a message object of type 'GeomType"
  "mujoco_ros_msgs/GeomType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeomType>)))
  "Returns md5sum for a message object of type '<GeomType>"
  "9a7c37d926d01c7f41edb14bd36b3b02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeomType)))
  "Returns md5sum for a message object of type 'GeomType"
  "9a7c37d926d01c7f41edb14bd36b3b02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeomType>)))
  "Returns full string definition for message of type '<GeomType>"
  (cl:format cl:nil "uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeomType)))
  "Returns full string definition for message of type 'GeomType"
  (cl:format cl:nil "uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeomType>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeomType>))
  "Converts a ROS message object to a list"
  (cl:list 'GeomType
    (cl:cons ':value (value msg))
))
