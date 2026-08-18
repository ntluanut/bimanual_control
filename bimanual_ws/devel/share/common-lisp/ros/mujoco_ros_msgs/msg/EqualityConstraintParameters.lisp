; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude EqualityConstraintParameters.msg.html

(cl:defclass <EqualityConstraintParameters> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type mujoco_ros_msgs-msg:EqualityConstraintType
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:EqualityConstraintType))
   (solverParameters
    :reader solverParameters
    :initarg :solverParameters
    :type mujoco_ros_msgs-msg:SolverParameters
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:SolverParameters))
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (classParam
    :reader classParam
    :initarg :classParam
    :type cl:string
    :initform "")
   (element1
    :reader element1
    :initarg :element1
    :type cl:string
    :initform "")
   (element2
    :reader element2
    :initarg :element2
    :type cl:string
    :initform "")
   (torquescale
    :reader torquescale
    :initarg :torquescale
    :type cl:float
    :initform 0.0)
   (anchor
    :reader anchor
    :initarg :anchor
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (relpose
    :reader relpose
    :initarg :relpose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (polycoef
    :reader polycoef
    :initarg :polycoef
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EqualityConstraintParameters (<EqualityConstraintParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EqualityConstraintParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EqualityConstraintParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<EqualityConstraintParameters> is deprecated: use mujoco_ros_msgs-msg:EqualityConstraintParameters instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:name-val is deprecated.  Use mujoco_ros_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:type-val is deprecated.  Use mujoco_ros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'solverParameters-val :lambda-list '(m))
(cl:defmethod solverParameters-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:solverParameters-val is deprecated.  Use mujoco_ros_msgs-msg:solverParameters instead.")
  (solverParameters m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:active-val is deprecated.  Use mujoco_ros_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'classParam-val :lambda-list '(m))
(cl:defmethod classParam-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:classParam-val is deprecated.  Use mujoco_ros_msgs-msg:classParam instead.")
  (classParam m))

(cl:ensure-generic-function 'element1-val :lambda-list '(m))
(cl:defmethod element1-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:element1-val is deprecated.  Use mujoco_ros_msgs-msg:element1 instead.")
  (element1 m))

(cl:ensure-generic-function 'element2-val :lambda-list '(m))
(cl:defmethod element2-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:element2-val is deprecated.  Use mujoco_ros_msgs-msg:element2 instead.")
  (element2 m))

(cl:ensure-generic-function 'torquescale-val :lambda-list '(m))
(cl:defmethod torquescale-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:torquescale-val is deprecated.  Use mujoco_ros_msgs-msg:torquescale instead.")
  (torquescale m))

(cl:ensure-generic-function 'anchor-val :lambda-list '(m))
(cl:defmethod anchor-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:anchor-val is deprecated.  Use mujoco_ros_msgs-msg:anchor instead.")
  (anchor m))

(cl:ensure-generic-function 'relpose-val :lambda-list '(m))
(cl:defmethod relpose-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:relpose-val is deprecated.  Use mujoco_ros_msgs-msg:relpose instead.")
  (relpose m))

(cl:ensure-generic-function 'polycoef-val :lambda-list '(m))
(cl:defmethod polycoef-val ((m <EqualityConstraintParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:polycoef-val is deprecated.  Use mujoco_ros_msgs-msg:polycoef instead.")
  (polycoef m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EqualityConstraintParameters>) ostream)
  "Serializes a message object of type '<EqualityConstraintParameters>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'solverParameters) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'classParam))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'classParam))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'element1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'element1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'element2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'element2))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'torquescale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relpose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polycoef))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'polycoef))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EqualityConstraintParameters>) istream)
  "Deserializes a message object of type '<EqualityConstraintParameters>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'solverParameters) istream)
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classParam) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'classParam) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'element1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'element1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'element2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'element2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torquescale) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relpose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polycoef) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polycoef)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EqualityConstraintParameters>)))
  "Returns string type for a message object of type '<EqualityConstraintParameters>"
  "mujoco_ros_msgs/EqualityConstraintParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EqualityConstraintParameters)))
  "Returns string type for a message object of type 'EqualityConstraintParameters"
  "mujoco_ros_msgs/EqualityConstraintParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EqualityConstraintParameters>)))
  "Returns md5sum for a message object of type '<EqualityConstraintParameters>"
  "152c371cf6b748601a865ee2d968aec7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EqualityConstraintParameters)))
  "Returns md5sum for a message object of type 'EqualityConstraintParameters"
  "152c371cf6b748601a865ee2d968aec7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EqualityConstraintParameters>)))
  "Returns full string definition for message of type '<EqualityConstraintParameters>"
  (cl:format cl:nil "string name~%mujoco_ros_msgs/EqualityConstraintType type~%mujoco_ros_msgs/SolverParameters solverParameters~%bool active~%string classParam~%string element1~%string element2~%float64 torquescale~%geometry_msgs/Vector3 anchor~%geometry_msgs/Pose relpose~%float64[] polycoef~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintType~%uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%================================================================================~%MSG: mujoco_ros_msgs/SolverParameters~%# solimp parameters~%~%float64 dmin~%float64 dmax~%float64 width~%float64 midpoint~%float64 power~%~%# solref parameters~%~%float64 timeconst~%float64 dampratio~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EqualityConstraintParameters)))
  "Returns full string definition for message of type 'EqualityConstraintParameters"
  (cl:format cl:nil "string name~%mujoco_ros_msgs/EqualityConstraintType type~%mujoco_ros_msgs/SolverParameters solverParameters~%bool active~%string classParam~%string element1~%string element2~%float64 torquescale~%geometry_msgs/Vector3 anchor~%geometry_msgs/Pose relpose~%float64[] polycoef~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintType~%uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%================================================================================~%MSG: mujoco_ros_msgs/SolverParameters~%# solimp parameters~%~%float64 dmin~%float64 dmax~%float64 width~%float64 midpoint~%float64 power~%~%# solref parameters~%~%float64 timeconst~%float64 dampratio~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EqualityConstraintParameters>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'solverParameters))
     1
     4 (cl:length (cl:slot-value msg 'classParam))
     4 (cl:length (cl:slot-value msg 'element1))
     4 (cl:length (cl:slot-value msg 'element2))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relpose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polycoef) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EqualityConstraintParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'EqualityConstraintParameters
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':solverParameters (solverParameters msg))
    (cl:cons ':active (active msg))
    (cl:cons ':classParam (classParam msg))
    (cl:cons ':element1 (element1 msg))
    (cl:cons ':element2 (element2 msg))
    (cl:cons ':torquescale (torquescale msg))
    (cl:cons ':anchor (anchor msg))
    (cl:cons ':relpose (relpose msg))
    (cl:cons ':polycoef (polycoef msg))
))
