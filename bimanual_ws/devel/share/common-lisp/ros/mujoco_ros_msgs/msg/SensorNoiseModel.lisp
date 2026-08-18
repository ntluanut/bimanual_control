; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude SensorNoiseModel.msg.html

(cl:defclass <SensorNoiseModel> (roslisp-msg-protocol:ros-message)
  ((sensor_name
    :reader sensor_name
    :initarg :sensor_name
    :type cl:string
    :initform "")
   (mean
    :reader mean
    :initarg :mean
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (std
    :reader std
    :initarg :std
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (set_flag
    :reader set_flag
    :initarg :set_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SensorNoiseModel (<SensorNoiseModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorNoiseModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorNoiseModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<SensorNoiseModel> is deprecated: use mujoco_ros_msgs-msg:SensorNoiseModel instead.")))

(cl:ensure-generic-function 'sensor_name-val :lambda-list '(m))
(cl:defmethod sensor_name-val ((m <SensorNoiseModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:sensor_name-val is deprecated.  Use mujoco_ros_msgs-msg:sensor_name instead.")
  (sensor_name m))

(cl:ensure-generic-function 'mean-val :lambda-list '(m))
(cl:defmethod mean-val ((m <SensorNoiseModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:mean-val is deprecated.  Use mujoco_ros_msgs-msg:mean instead.")
  (mean m))

(cl:ensure-generic-function 'std-val :lambda-list '(m))
(cl:defmethod std-val ((m <SensorNoiseModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:std-val is deprecated.  Use mujoco_ros_msgs-msg:std instead.")
  (std m))

(cl:ensure-generic-function 'set_flag-val :lambda-list '(m))
(cl:defmethod set_flag-val ((m <SensorNoiseModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:set_flag-val is deprecated.  Use mujoco_ros_msgs-msg:set_flag instead.")
  (set_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorNoiseModel>) ostream)
  "Serializes a message object of type '<SensorNoiseModel>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mean))))
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
   (cl:slot-value msg 'mean))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'std))))
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
   (cl:slot-value msg 'std))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'set_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorNoiseModel>) istream)
  "Deserializes a message object of type '<SensorNoiseModel>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mean) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mean)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'std) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'std)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'set_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorNoiseModel>)))
  "Returns string type for a message object of type '<SensorNoiseModel>"
  "mujoco_ros_msgs/SensorNoiseModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorNoiseModel)))
  "Returns string type for a message object of type 'SensorNoiseModel"
  "mujoco_ros_msgs/SensorNoiseModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorNoiseModel>)))
  "Returns md5sum for a message object of type '<SensorNoiseModel>"
  "ecdfe0a7e1630fddef7c31cf04081974")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorNoiseModel)))
  "Returns md5sum for a message object of type 'SensorNoiseModel"
  "ecdfe0a7e1630fddef7c31cf04081974")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorNoiseModel>)))
  "Returns full string definition for message of type '<SensorNoiseModel>"
  (cl:format cl:nil "# Set the noise model of a sensor defining mean and standard deviation for each dimension~%# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!~%string sensor_name~%float64[] mean~%float64[] std~%uint8 set_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorNoiseModel)))
  "Returns full string definition for message of type 'SensorNoiseModel"
  (cl:format cl:nil "# Set the noise model of a sensor defining mean and standard deviation for each dimension~%# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!~%string sensor_name~%float64[] mean~%float64[] std~%uint8 set_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorNoiseModel>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mean) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'std) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorNoiseModel>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorNoiseModel
    (cl:cons ':sensor_name (sensor_name msg))
    (cl:cons ':mean (mean msg))
    (cl:cons ':std (std msg))
    (cl:cons ':set_flag (set_flag msg))
))
