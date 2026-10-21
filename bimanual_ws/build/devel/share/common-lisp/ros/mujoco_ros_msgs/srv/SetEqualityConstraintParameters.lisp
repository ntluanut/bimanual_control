; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude SetEqualityConstraintParameters-request.msg.html

(cl:defclass <SetEqualityConstraintParameters-request> (roslisp-msg-protocol:ros-message)
  ((parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector mujoco_ros_msgs-msg:EqualityConstraintParameters)
   :initform (cl:make-array 0 :element-type 'mujoco_ros_msgs-msg:EqualityConstraintParameters :initial-element (cl:make-instance 'mujoco_ros_msgs-msg:EqualityConstraintParameters)))
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass SetEqualityConstraintParameters-request (<SetEqualityConstraintParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEqualityConstraintParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEqualityConstraintParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetEqualityConstraintParameters-request> is deprecated: use mujoco_ros_msgs-srv:SetEqualityConstraintParameters-request instead.")))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <SetEqualityConstraintParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:parameters-val is deprecated.  Use mujoco_ros_msgs-srv:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <SetEqualityConstraintParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEqualityConstraintParameters-request>) ostream)
  "Serializes a message object of type '<SetEqualityConstraintParameters-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEqualityConstraintParameters-request>) istream)
  "Deserializes a message object of type '<SetEqualityConstraintParameters-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEqualityConstraintParameters-request>)))
  "Returns string type for a service object of type '<SetEqualityConstraintParameters-request>"
  "mujoco_ros_msgs/SetEqualityConstraintParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEqualityConstraintParameters-request)))
  "Returns string type for a service object of type 'SetEqualityConstraintParameters-request"
  "mujoco_ros_msgs/SetEqualityConstraintParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEqualityConstraintParameters-request>)))
  "Returns md5sum for a message object of type '<SetEqualityConstraintParameters-request>"
  "8c7bc419b78113b1ae9c6f7fe138068f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEqualityConstraintParameters-request)))
  "Returns md5sum for a message object of type 'SetEqualityConstraintParameters-request"
  "8c7bc419b78113b1ae9c6f7fe138068f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEqualityConstraintParameters-request>)))
  "Returns full string definition for message of type '<SetEqualityConstraintParameters-request>"
  (cl:format cl:nil "mujoco_ros_msgs/EqualityConstraintParameters[] parameters~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintParameters~%string name~%mujoco_ros_msgs/EqualityConstraintType type~%mujoco_ros_msgs/SolverParameters solverParameters~%bool active~%string classParam~%string element1~%string element2~%float64 torquescale~%geometry_msgs/Vector3 anchor~%geometry_msgs/Pose relpose~%float64[] polycoef~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintType~%uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%================================================================================~%MSG: mujoco_ros_msgs/SolverParameters~%# solimp parameters~%~%float64 dmin~%float64 dmax~%float64 width~%float64 midpoint~%float64 power~%~%# solref parameters~%~%float64 timeconst~%float64 dampratio~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEqualityConstraintParameters-request)))
  "Returns full string definition for message of type 'SetEqualityConstraintParameters-request"
  (cl:format cl:nil "mujoco_ros_msgs/EqualityConstraintParameters[] parameters~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintParameters~%string name~%mujoco_ros_msgs/EqualityConstraintType type~%mujoco_ros_msgs/SolverParameters solverParameters~%bool active~%string classParam~%string element1~%string element2~%float64 torquescale~%geometry_msgs/Vector3 anchor~%geometry_msgs/Pose relpose~%float64[] polycoef~%~%================================================================================~%MSG: mujoco_ros_msgs/EqualityConstraintType~%uint16 value~%uint16 CONNECT=0~%uint16 WELD=1~%uint16 JOINT=2~%uint16 TENDON=3~%~%================================================================================~%MSG: mujoco_ros_msgs/SolverParameters~%# solimp parameters~%~%float64 dmin~%float64 dmax~%float64 width~%float64 midpoint~%float64 power~%~%# solref parameters~%~%float64 timeconst~%float64 dampratio~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEqualityConstraintParameters-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEqualityConstraintParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEqualityConstraintParameters-request
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude SetEqualityConstraintParameters-response.msg.html

(cl:defclass <SetEqualityConstraintParameters-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEqualityConstraintParameters-response (<SetEqualityConstraintParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEqualityConstraintParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEqualityConstraintParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetEqualityConstraintParameters-response> is deprecated: use mujoco_ros_msgs-srv:SetEqualityConstraintParameters-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetEqualityConstraintParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <SetEqualityConstraintParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:status_message-val is deprecated.  Use mujoco_ros_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEqualityConstraintParameters-response>) ostream)
  "Serializes a message object of type '<SetEqualityConstraintParameters-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEqualityConstraintParameters-response>) istream)
  "Deserializes a message object of type '<SetEqualityConstraintParameters-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEqualityConstraintParameters-response>)))
  "Returns string type for a service object of type '<SetEqualityConstraintParameters-response>"
  "mujoco_ros_msgs/SetEqualityConstraintParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEqualityConstraintParameters-response)))
  "Returns string type for a service object of type 'SetEqualityConstraintParameters-response"
  "mujoco_ros_msgs/SetEqualityConstraintParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEqualityConstraintParameters-response>)))
  "Returns md5sum for a message object of type '<SetEqualityConstraintParameters-response>"
  "8c7bc419b78113b1ae9c6f7fe138068f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEqualityConstraintParameters-response)))
  "Returns md5sum for a message object of type 'SetEqualityConstraintParameters-response"
  "8c7bc419b78113b1ae9c6f7fe138068f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEqualityConstraintParameters-response>)))
  "Returns full string definition for message of type '<SetEqualityConstraintParameters-response>"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEqualityConstraintParameters-response)))
  "Returns full string definition for message of type 'SetEqualityConstraintParameters-response"
  (cl:format cl:nil "bool success~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEqualityConstraintParameters-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEqualityConstraintParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEqualityConstraintParameters-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEqualityConstraintParameters)))
  'SetEqualityConstraintParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEqualityConstraintParameters)))
  'SetEqualityConstraintParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEqualityConstraintParameters)))
  "Returns string type for a service object of type '<SetEqualityConstraintParameters>"
  "mujoco_ros_msgs/SetEqualityConstraintParameters")