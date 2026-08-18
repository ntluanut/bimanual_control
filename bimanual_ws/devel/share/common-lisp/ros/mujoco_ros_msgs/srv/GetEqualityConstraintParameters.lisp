; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude GetEqualityConstraintParameters-request.msg.html

(cl:defclass <GetEqualityConstraintParameters-request> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass GetEqualityConstraintParameters-request (<GetEqualityConstraintParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEqualityConstraintParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEqualityConstraintParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetEqualityConstraintParameters-request> is deprecated: use mujoco_ros_msgs-srv:GetEqualityConstraintParameters-request instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <GetEqualityConstraintParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:names-val is deprecated.  Use mujoco_ros_msgs-srv:names instead.")
  (names m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <GetEqualityConstraintParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEqualityConstraintParameters-request>) ostream)
  "Serializes a message object of type '<GetEqualityConstraintParameters-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEqualityConstraintParameters-request>) istream)
  "Deserializes a message object of type '<GetEqualityConstraintParameters-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEqualityConstraintParameters-request>)))
  "Returns string type for a service object of type '<GetEqualityConstraintParameters-request>"
  "mujoco_ros_msgs/GetEqualityConstraintParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEqualityConstraintParameters-request)))
  "Returns string type for a service object of type 'GetEqualityConstraintParameters-request"
  "mujoco_ros_msgs/GetEqualityConstraintParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEqualityConstraintParameters-request>)))
  "Returns md5sum for a message object of type '<GetEqualityConstraintParameters-request>"
  "282e8dd7ae13e3ddf31cbad398a879a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEqualityConstraintParameters-request)))
  "Returns md5sum for a message object of type 'GetEqualityConstraintParameters-request"
  "282e8dd7ae13e3ddf31cbad398a879a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEqualityConstraintParameters-request>)))
  "Returns full string definition for message of type '<GetEqualityConstraintParameters-request>"
  (cl:format cl:nil "string[] names~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEqualityConstraintParameters-request)))
  "Returns full string definition for message of type 'GetEqualityConstraintParameters-request"
  (cl:format cl:nil "string[] names~%string admin_hash~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEqualityConstraintParameters-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEqualityConstraintParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEqualityConstraintParameters-request
    (cl:cons ':names (names msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude GetEqualityConstraintParameters-response.msg.html

(cl:defclass <GetEqualityConstraintParameters-response> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector mujoco_ros_msgs-msg:EqualityConstraintParameters)
   :initform (cl:make-array 0 :element-type 'mujoco_ros_msgs-msg:EqualityConstraintParameters :initial-element (cl:make-instance 'mujoco_ros_msgs-msg:EqualityConstraintParameters)))
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

(cl:defclass GetEqualityConstraintParameters-response (<GetEqualityConstraintParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEqualityConstraintParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEqualityConstraintParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetEqualityConstraintParameters-response> is deprecated: use mujoco_ros_msgs-srv:GetEqualityConstraintParameters-response instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <GetEqualityConstraintParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:parameters-val is deprecated.  Use mujoco_ros_msgs-srv:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetEqualityConstraintParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <GetEqualityConstraintParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEqualityConstraintParameters-response>) ostream)
  "Serializes a message object of type '<GetEqualityConstraintParameters-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEqualityConstraintParameters-response>) istream)
  "Deserializes a message object of type '<GetEqualityConstraintParameters-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mujoco_ros_msgs-msg:EqualityConstraintParameters))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEqualityConstraintParameters-response>)))
  "Returns string type for a service object of type '<GetEqualityConstraintParameters-response>"
  "mujoco_ros_msgs/GetEqualityConstraintParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEqualityConstraintParameters-response)))
  "Returns string type for a service object of type 'GetEqualityConstraintParameters-response"
  "mujoco_ros_msgs/GetEqualityConstraintParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEqualityConstraintParameters-response>)))
  "Returns md5sum for a message object of type '<GetEqualityConstraintParameters-response>"
  "282e8dd7ae13e3ddf31cbad398a879a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEqualityConstraintParameters-response)))
  "Returns md5sum for a message object of type 'GetEqualityConstraintParameters-response"
  "282e8dd7ae13e3ddf31cbad398a879a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEqualityConstraintParameters-response>)))
  "Returns full string definition for message of type '<GetEqualityConstraintParameters-response>"
  (cl:format cl:nil "mujoco_ros_msgs/EqualityConstraintParameters[] parameters~%bool success~%string status_message~%~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintParameters~%string name~%mujoco_ros_msgs/EqualityConstraintType type~%mujoco_ros_msgs/SolverParameters solverParameters~%bool active~%string classParam~%string element1~%string element2~%float64 torquescale~%geometry_msgs/Vector3 anchor~%geometry_msgs/Pose relpose~%float64[] polycoef~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintType~%uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%================================================================================~%MSG: mujoco_ros_msgs/SolverParameters~%# solimp parameters~%~%float64 dmin~%float64 dmax~%float64 width~%float64 midpoint~%float64 power~%~%# solref parameters~%~%float64 timeconst~%float64 dampratio~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEqualityConstraintParameters-response)))
  "Returns full string definition for message of type 'GetEqualityConstraintParameters-response"
  (cl:format cl:nil "mujoco_ros_msgs/EqualityConstraintParameters[] parameters~%bool success~%string status_message~%~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintParameters~%string name~%mujoco_ros_msgs/EqualityConstraintType type~%mujoco_ros_msgs/SolverParameters solverParameters~%bool active~%string classParam~%string element1~%string element2~%float64 torquescale~%geometry_msgs/Vector3 anchor~%geometry_msgs/Pose relpose~%float64[] polycoef~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintType~%uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%================================================================================~%MSG: mujoco_ros_msgs/SolverParameters~%# solimp parameters~%~%float64 dmin~%float64 dmax~%float64 width~%float64 midpoint~%float64 power~%~%# solref parameters~%~%float64 timeconst~%float64 dampratio~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEqualityConstraintParameters-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEqualityConstraintParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEqualityConstraintParameters-response
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEqualityConstraintParameters)))
  'GetEqualityConstraintParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEqualityConstraintParameters)))
  'GetEqualityConstraintParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEqualityConstraintParameters)))
  "Returns string type for a service object of type '<GetEqualityConstraintParameters>"
  "mujoco_ros_msgs/GetEqualityConstraintParameters")