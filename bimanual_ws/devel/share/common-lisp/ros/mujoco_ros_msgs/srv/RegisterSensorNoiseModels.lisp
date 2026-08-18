; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude RegisterSensorNoiseModels-request.msg.html

(cl:defclass <RegisterSensorNoiseModels-request> (roslisp-msg-protocol:ros-message)
  ((noise_models
    :reader noise_models
    :initarg :noise_models
    :type (cl:vector mujoco_ros_msgs-msg:SensorNoiseModel)
   :initform (cl:make-array 0 :element-type 'mujoco_ros_msgs-msg:SensorNoiseModel :initial-element (cl:make-instance 'mujoco_ros_msgs-msg:SensorNoiseModel)))
   (admin_hash
    :reader admin_hash
    :initarg :admin_hash
    :type cl:string
    :initform ""))
)

(cl:defclass RegisterSensorNoiseModels-request (<RegisterSensorNoiseModels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterSensorNoiseModels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterSensorNoiseModels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<RegisterSensorNoiseModels-request> is deprecated: use mujoco_ros_msgs-srv:RegisterSensorNoiseModels-request instead.")))

(cl:ensure-generic-function 'noise_models-val :lambda-list '(m))
(cl:defmethod noise_models-val ((m <RegisterSensorNoiseModels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:noise_models-val is deprecated.  Use mujoco_ros_msgs-srv:noise_models instead.")
  (noise_models m))

(cl:ensure-generic-function 'admin_hash-val :lambda-list '(m))
(cl:defmethod admin_hash-val ((m <RegisterSensorNoiseModels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:admin_hash-val is deprecated.  Use mujoco_ros_msgs-srv:admin_hash instead.")
  (admin_hash m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterSensorNoiseModels-request>) ostream)
  "Serializes a message object of type '<RegisterSensorNoiseModels-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'noise_models))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'noise_models))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'admin_hash))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'admin_hash))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterSensorNoiseModels-request>) istream)
  "Deserializes a message object of type '<RegisterSensorNoiseModels-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'noise_models) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'noise_models)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mujoco_ros_msgs-msg:SensorNoiseModel))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterSensorNoiseModels-request>)))
  "Returns string type for a service object of type '<RegisterSensorNoiseModels-request>"
  "mujoco_ros_msgs/RegisterSensorNoiseModelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterSensorNoiseModels-request)))
  "Returns string type for a service object of type 'RegisterSensorNoiseModels-request"
  "mujoco_ros_msgs/RegisterSensorNoiseModelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterSensorNoiseModels-request>)))
  "Returns md5sum for a message object of type '<RegisterSensorNoiseModels-request>"
  "70ceb82b11a1148543bda7e861dfd43b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterSensorNoiseModels-request)))
  "Returns md5sum for a message object of type 'RegisterSensorNoiseModels-request"
  "70ceb82b11a1148543bda7e861dfd43b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterSensorNoiseModels-request>)))
  "Returns full string definition for message of type '<RegisterSensorNoiseModels-request>"
  (cl:format cl:nil "mujoco_ros_msgs/SensorNoiseModel[] noise_models~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/SensorNoiseModel~%# Set the noise model of a sensor defining mean and standard deviation for each dimension~%# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!~%string sensor_name~%float64[] mean~%float64[] std~%uint8 set_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterSensorNoiseModels-request)))
  "Returns full string definition for message of type 'RegisterSensorNoiseModels-request"
  (cl:format cl:nil "mujoco_ros_msgs/SensorNoiseModel[] noise_models~%string admin_hash~%~%================================================================================~%MSG: mujoco_ros_msgs/SensorNoiseModel~%# Set the noise model of a sensor defining mean and standard deviation for each dimension~%# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!~%string sensor_name~%float64[] mean~%float64[] std~%uint8 set_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterSensorNoiseModels-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'noise_models) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'admin_hash))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterSensorNoiseModels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterSensorNoiseModels-request
    (cl:cons ':noise_models (noise_models msg))
    (cl:cons ':admin_hash (admin_hash msg))
))
;//! \htmlinclude RegisterSensorNoiseModels-response.msg.html

(cl:defclass <RegisterSensorNoiseModels-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegisterSensorNoiseModels-response (<RegisterSensorNoiseModels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterSensorNoiseModels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterSensorNoiseModels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<RegisterSensorNoiseModels-response> is deprecated: use mujoco_ros_msgs-srv:RegisterSensorNoiseModels-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegisterSensorNoiseModels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterSensorNoiseModels-response>) ostream)
  "Serializes a message object of type '<RegisterSensorNoiseModels-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterSensorNoiseModels-response>) istream)
  "Deserializes a message object of type '<RegisterSensorNoiseModels-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterSensorNoiseModels-response>)))
  "Returns string type for a service object of type '<RegisterSensorNoiseModels-response>"
  "mujoco_ros_msgs/RegisterSensorNoiseModelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterSensorNoiseModels-response)))
  "Returns string type for a service object of type 'RegisterSensorNoiseModels-response"
  "mujoco_ros_msgs/RegisterSensorNoiseModelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterSensorNoiseModels-response>)))
  "Returns md5sum for a message object of type '<RegisterSensorNoiseModels-response>"
  "70ceb82b11a1148543bda7e861dfd43b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterSensorNoiseModels-response)))
  "Returns md5sum for a message object of type 'RegisterSensorNoiseModels-response"
  "70ceb82b11a1148543bda7e861dfd43b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterSensorNoiseModels-response>)))
  "Returns full string definition for message of type '<RegisterSensorNoiseModels-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterSensorNoiseModels-response)))
  "Returns full string definition for message of type 'RegisterSensorNoiseModels-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterSensorNoiseModels-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterSensorNoiseModels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterSensorNoiseModels-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegisterSensorNoiseModels)))
  'RegisterSensorNoiseModels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegisterSensorNoiseModels)))
  'RegisterSensorNoiseModels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterSensorNoiseModels)))
  "Returns string type for a service object of type '<RegisterSensorNoiseModels>"
  "mujoco_ros_msgs/RegisterSensorNoiseModels")