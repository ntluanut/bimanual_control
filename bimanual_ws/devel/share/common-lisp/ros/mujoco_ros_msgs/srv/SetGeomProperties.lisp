; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude SetGeomProperties-request.msg.html

(cl:defclass <SetGeomProperties-request> (roslisp-msg-protocol:ros-message)
  ((properties
    :reader properties
    :initarg :properties
    :type mujoco_ros_msgs-msg:GeomProperties
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:GeomProperties))
   (set_type
    :reader set_type
    :initarg :set_type
    :type cl:boolean
    :initform cl:nil)
   (set_mass
    :reader set_mass
    :initarg :set_mass
    :type cl:boolean
    :initform cl:nil)
   (set_friction
    :reader set_friction
    :initarg :set_friction
    :type cl:boolean
    :initform cl:nil)
   (set_size
    :reader set_size
    :initarg :set_size
    :type cl:boolean
    :initform cl:nil)
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass SetGeomProperties-request (<SetGeomProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGeomProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGeomProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetGeomProperties-request> is deprecated: use mujoco_ros_msgs-srv:SetGeomProperties-request instead.")))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <SetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:properties-val is deprecated.  Use mujoco_ros_msgs-srv:properties instead.")
  (properties m))

(cl:ensure-generic-function 'set_type-val :lambda-list '(m))
(cl:defmethod set_type-val ((m <SetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_type-val is deprecated.  Use mujoco_ros_msgs-srv:set_type instead.")
  (set_type m))

(cl:ensure-generic-function 'set_mass-val :lambda-list '(m))
(cl:defmethod set_mass-val ((m <SetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_mass-val is deprecated.  Use mujoco_ros_msgs-srv:set_mass instead.")
  (set_mass m))

(cl:ensure-generic-function 'set_friction-val :lambda-list '(m))
(cl:defmethod set_friction-val ((m <SetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_friction-val is deprecated.  Use mujoco_ros_msgs-srv:set_friction instead.")
  (set_friction m))

(cl:ensure-generic-function 'set_size-val :lambda-list '(m))
(cl:defmethod set_size-val ((m <SetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:set_size-val is deprecated.  Use mujoco_ros_msgs-srv:set_size instead.")
  (set_size m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <SetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGeomProperties-request>) ostream)
  "Serializes a message object of type '<SetGeomProperties-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'properties) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_type) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_mass) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_friction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_size) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGeomProperties-request>) istream)
  "Deserializes a message object of type '<SetGeomProperties-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'properties) istream)
    (cl:setf (cl:slot-value msg 'set_type) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_mass) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_friction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_size) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGeomProperties-request>)))
  "Returns string type for a service object of type '<SetGeomProperties-request>"
  "mujoco_ros_msgs/SetGeomPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGeomProperties-request)))
  "Returns string type for a service object of type 'SetGeomProperties-request"
  "mujoco_ros_msgs/SetGeomPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGeomProperties-request>)))
  "Returns md5sum for a message object of type '<SetGeomProperties-request>"
  "a7072e8bafa01bef541263a9142aa174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGeomProperties-request)))
  "Returns md5sum for a message object of type 'SetGeomProperties-request"
  "a7072e8bafa01bef541263a9142aa174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGeomProperties-request>)))
  "Returns full string definition for message of type '<SetGeomProperties-request>"
  (cl:format cl:nil "mujoco_ros_msgs/GeomProperties properties~%bool set_type~%bool set_mass~%bool set_friction~%bool set_size~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomProperties~%string name~%mujoco_ros_msgs/GeomType type~%float32 body_mass # total mass of the body this geom belongs to~%float32 size_0~%float32 size_1~%float32 size_2~%float32 friction_slide~%float32 friction_spin~%float32 friction_roll~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomType~%uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGeomProperties-request)))
  "Returns full string definition for message of type 'SetGeomProperties-request"
  (cl:format cl:nil "mujoco_ros_msgs/GeomProperties properties~%bool set_type~%bool set_mass~%bool set_friction~%bool set_size~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomProperties~%string name~%mujoco_ros_msgs/GeomType type~%float32 body_mass # total mass of the body this geom belongs to~%float32 size_0~%float32 size_1~%float32 size_2~%float32 friction_slide~%float32 friction_spin~%float32 friction_roll~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomType~%uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGeomProperties-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'properties))
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGeomProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGeomProperties-request
    (cl:cons ':properties (properties msg))
    (cl:cons ':set_type (set_type msg))
    (cl:cons ':set_mass (set_mass msg))
    (cl:cons ':set_friction (set_friction msg))
    (cl:cons ':set_size (set_size msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude SetGeomProperties-response.msg.html

(cl:defclass <SetGeomProperties-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetGeomProperties-response (<SetGeomProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGeomProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGeomProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetGeomProperties-response> is deprecated: use mujoco_ros_msgs-srv:SetGeomProperties-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetGeomProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetGeomProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGeomProperties-response>) ostream)
  "Serializes a message object of type '<SetGeomProperties-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGeomProperties-response>) istream)
  "Deserializes a message object of type '<SetGeomProperties-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGeomProperties-response>)))
  "Returns string type for a service object of type '<SetGeomProperties-response>"
  "mujoco_ros_msgs/SetGeomPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGeomProperties-response)))
  "Returns string type for a service object of type 'SetGeomProperties-response"
  "mujoco_ros_msgs/SetGeomPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGeomProperties-response>)))
  "Returns md5sum for a message object of type '<SetGeomProperties-response>"
  "a7072e8bafa01bef541263a9142aa174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGeomProperties-response)))
  "Returns md5sum for a message object of type 'SetGeomProperties-response"
  "a7072e8bafa01bef541263a9142aa174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGeomProperties-response>)))
  "Returns full string definition for message of type '<SetGeomProperties-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGeomProperties-response)))
  "Returns full string definition for message of type 'SetGeomProperties-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGeomProperties-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGeomProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGeomProperties-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGeomProperties)))
  'SetGeomProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGeomProperties)))
  'SetGeomProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGeomProperties)))
  "Returns string type for a service object of type '<SetGeomProperties>"
  "mujoco_ros_msgs/SetGeomProperties")