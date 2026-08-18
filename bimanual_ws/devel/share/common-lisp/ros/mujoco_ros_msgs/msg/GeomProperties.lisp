; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude GeomProperties.msg.html

(cl:defclass <GeomProperties> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type mujoco_ros_msgs-msg:GeomType
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:GeomType))
   (body_mass
    :reader body_mass
    :initarg :body_mass
    :type cl:float
    :initform 0.0)
   (size_0
    :reader size_0
    :initarg :size_0
    :type cl:float
    :initform 0.0)
   (size_1
    :reader size_1
    :initarg :size_1
    :type cl:float
    :initform 0.0)
   (size_2
    :reader size_2
    :initarg :size_2
    :type cl:float
    :initform 0.0)
   (friction_slide
    :reader friction_slide
    :initarg :friction_slide
    :type cl:float
    :initform 0.0)
   (friction_spin
    :reader friction_spin
    :initarg :friction_spin
    :type cl:float
    :initform 0.0)
   (friction_roll
    :reader friction_roll
    :initarg :friction_roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass GeomProperties (<GeomProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeomProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeomProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<GeomProperties> is deprecated: use mujoco_ros_msgs-msg:GeomProperties instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:name-val is deprecated.  Use mujoco_ros_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:type-val is deprecated.  Use mujoco_ros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'body_mass-val :lambda-list '(m))
(cl:defmethod body_mass-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:body_mass-val is deprecated.  Use mujoco_ros_msgs-msg:body_mass instead.")
  (body_mass m))

(cl:ensure-generic-function 'size_0-val :lambda-list '(m))
(cl:defmethod size_0-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:size_0-val is deprecated.  Use mujoco_ros_msgs-msg:size_0 instead.")
  (size_0 m))

(cl:ensure-generic-function 'size_1-val :lambda-list '(m))
(cl:defmethod size_1-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:size_1-val is deprecated.  Use mujoco_ros_msgs-msg:size_1 instead.")
  (size_1 m))

(cl:ensure-generic-function 'size_2-val :lambda-list '(m))
(cl:defmethod size_2-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:size_2-val is deprecated.  Use mujoco_ros_msgs-msg:size_2 instead.")
  (size_2 m))

(cl:ensure-generic-function 'friction_slide-val :lambda-list '(m))
(cl:defmethod friction_slide-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:friction_slide-val is deprecated.  Use mujoco_ros_msgs-msg:friction_slide instead.")
  (friction_slide m))

(cl:ensure-generic-function 'friction_spin-val :lambda-list '(m))
(cl:defmethod friction_spin-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:friction_spin-val is deprecated.  Use mujoco_ros_msgs-msg:friction_spin instead.")
  (friction_spin m))

(cl:ensure-generic-function 'friction_roll-val :lambda-list '(m))
(cl:defmethod friction_roll-val ((m <GeomProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:friction_roll-val is deprecated.  Use mujoco_ros_msgs-msg:friction_roll instead.")
  (friction_roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeomProperties>) ostream)
  "Serializes a message object of type '<GeomProperties>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'body_mass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'size_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'size_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'size_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'friction_slide))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'friction_spin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'friction_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeomProperties>) istream)
  "Deserializes a message object of type '<GeomProperties>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'body_mass) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size_0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_slide) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_spin) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeomProperties>)))
  "Returns string type for a message object of type '<GeomProperties>"
  "mujoco_ros_msgs/GeomProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeomProperties)))
  "Returns string type for a message object of type 'GeomProperties"
  "mujoco_ros_msgs/GeomProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeomProperties>)))
  "Returns md5sum for a message object of type '<GeomProperties>"
  "bf0bfaf1ba9ee978c70396532fa14531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeomProperties)))
  "Returns md5sum for a message object of type 'GeomProperties"
  "bf0bfaf1ba9ee978c70396532fa14531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeomProperties>)))
  "Returns full string definition for message of type '<GeomProperties>"
  (cl:format cl:nil "string name~%mujoco_ros_msgs/GeomType type~%float32 body_mass # total mass of the body this geom belongs to~%float32 size_0~%float32 size_1~%float32 size_2~%float32 friction_slide~%float32 friction_spin~%float32 friction_roll~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomType~%uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeomProperties)))
  "Returns full string definition for message of type 'GeomProperties"
  (cl:format cl:nil "string name~%mujoco_ros_msgs/GeomType type~%float32 body_mass # total mass of the body this geom belongs to~%float32 size_0~%float32 size_1~%float32 size_2~%float32 friction_slide~%float32 friction_spin~%float32 friction_roll~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomType~%uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeomProperties>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeomProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'GeomProperties
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':body_mass (body_mass msg))
    (cl:cons ':size_0 (size_0 msg))
    (cl:cons ':size_1 (size_1 msg))
    (cl:cons ':size_2 (size_2 msg))
    (cl:cons ':friction_slide (friction_slide msg))
    (cl:cons ':friction_spin (friction_spin msg))
    (cl:cons ':friction_roll (friction_roll msg))
))
