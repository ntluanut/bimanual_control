; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude GetGeomProperties-request.msg.html

(cl:defclass <GetGeomProperties-request> (roslisp-msg-protocol:ros-message)
  ((geom_name
    :reader geom_name
    :initarg :geom_name
    :type cl:string
    :initform "")
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass GetGeomProperties-request (<GetGeomProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGeomProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGeomProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetGeomProperties-request> is deprecated: use mujoco_ros_msgs-srv:GetGeomProperties-request instead.")))

(cl:ensure-generic-function 'geom_name-val :lambda-list '(m))
(cl:defmethod geom_name-val ((m <GetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:geom_name-val is deprecated.  Use mujoco_ros_msgs-srv:geom_name instead.")
  (geom_name m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <GetGeomProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGeomProperties-request>) ostream)
  "Serializes a message object of type '<GetGeomProperties-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'geom_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'geom_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGeomProperties-request>) istream)
  "Deserializes a message object of type '<GetGeomProperties-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'geom_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'geom_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGeomProperties-request>)))
  "Returns string type for a service object of type '<GetGeomProperties-request>"
  "mujoco_ros_msgs/GetGeomPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeomProperties-request)))
  "Returns string type for a service object of type 'GetGeomProperties-request"
  "mujoco_ros_msgs/GetGeomPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGeomProperties-request>)))
  "Returns md5sum for a message object of type '<GetGeomProperties-request>"
  "39732699bb1604377c28257f0fc466f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGeomProperties-request)))
  "Returns md5sum for a message object of type 'GetGeomProperties-request"
  "39732699bb1604377c28257f0fc466f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGeomProperties-request>)))
  "Returns full string definition for message of type '<GetGeomProperties-request>"
  (cl:format cl:nil "string geom_name~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGeomProperties-request)))
  "Returns full string definition for message of type 'GetGeomProperties-request"
  (cl:format cl:nil "string geom_name~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGeomProperties-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'geom_name))
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGeomProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGeomProperties-request
    (cl:cons ':geom_name (geom_name msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude GetGeomProperties-response.msg.html

(cl:defclass <GetGeomProperties-response> (roslisp-msg-protocol:ros-message)
  ((properties
    :reader properties
    :initarg :properties
    :type mujoco_ros_msgs-msg:GeomProperties
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:GeomProperties))
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

(cl:defclass GetGeomProperties-response (<GetGeomProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGeomProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGeomProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetGeomProperties-response> is deprecated: use mujoco_ros_msgs-srv:GetGeomProperties-response instead.")))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <GetGeomProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:properties-val is deprecated.  Use mujoco_ros_msgs-srv:properties instead.")
  (properties m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetGeomProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetGeomProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGeomProperties-response>) ostream)
  "Serializes a message object of type '<GetGeomProperties-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'properties) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGeomProperties-response>) istream)
  "Deserializes a message object of type '<GetGeomProperties-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'properties) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGeomProperties-response>)))
  "Returns string type for a service object of type '<GetGeomProperties-response>"
  "mujoco_ros_msgs/GetGeomPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeomProperties-response)))
  "Returns string type for a service object of type 'GetGeomProperties-response"
  "mujoco_ros_msgs/GetGeomPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGeomProperties-response>)))
  "Returns md5sum for a message object of type '<GetGeomProperties-response>"
  "39732699bb1604377c28257f0fc466f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGeomProperties-response)))
  "Returns md5sum for a message object of type 'GetGeomProperties-response"
  "39732699bb1604377c28257f0fc466f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGeomProperties-response>)))
  "Returns full string definition for message of type '<GetGeomProperties-response>"
  (cl:format cl:nil "mujoco_ros_msgs/GeomProperties properties~%bool success~%string status_message~%~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomProperties~%string name~%mujoco_ros_msgs/GeomType type~%float32 body_mass # total mass of the body this geom belongs to~%float32 size_0~%float32 size_1~%float32 size_2~%float32 friction_slide~%float32 friction_spin~%float32 friction_roll~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomType~%uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGeomProperties-response)))
  "Returns full string definition for message of type 'GetGeomProperties-response"
  (cl:format cl:nil "mujoco_ros_msgs/GeomProperties properties~%bool success~%string status_message~%~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomProperties~%string name~%mujoco_ros_msgs/GeomType type~%float32 body_mass # total mass of the body this geom belongs to~%float32 size_0~%float32 size_1~%float32 size_2~%float32 friction_slide~%float32 friction_spin~%float32 friction_roll~%~%================================================================================~%MSG: mujoco_ros_msgs/GeomType~%uint16 value~%uint16 PLANE=0~%uint16 HFIELD=1~%uint16 SPHERE=2~%uint16 CAPSULE=3~%uint16 ELLIPSOID=4~%uint16 CYLINDER=5~%uint16 BOX=6~%uint16 MESH=7~%uint16 GEOM_NONE = 1001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGeomProperties-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'properties))
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGeomProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGeomProperties-response
    (cl:cons ':properties (properties msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGeomProperties)))
  'GetGeomProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGeomProperties)))
  'GetGeomProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeomProperties)))
  "Returns string type for a service object of type '<GetGeomProperties>"
  "mujoco_ros_msgs/GetGeomProperties")