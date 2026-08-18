; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude PluginStats.msg.html

(cl:defclass <PluginStats> (roslisp-msg-protocol:ros-message)
  ((plugin_type
    :reader plugin_type
    :initarg :plugin_type
    :type cl:string
    :initform "")
   (load_time
    :reader load_time
    :initarg :load_time
    :type cl:float
    :initform 0.0)
   (reset_time
    :reader reset_time
    :initarg :reset_time
    :type cl:float
    :initform 0.0)
   (ema_steptime_control
    :reader ema_steptime_control
    :initarg :ema_steptime_control
    :type cl:float
    :initform 0.0)
   (ema_steptime_passive
    :reader ema_steptime_passive
    :initarg :ema_steptime_passive
    :type cl:float
    :initform 0.0)
   (ema_steptime_render
    :reader ema_steptime_render
    :initarg :ema_steptime_render
    :type cl:float
    :initform 0.0)
   (ema_steptime_last_stage
    :reader ema_steptime_last_stage
    :initarg :ema_steptime_last_stage
    :type cl:float
    :initform 0.0))
)

(cl:defclass PluginStats (<PluginStats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PluginStats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PluginStats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<PluginStats> is deprecated: use mujoco_ros_msgs-msg:PluginStats instead.")))

(cl:ensure-generic-function 'plugin_type-val :lambda-list '(m))
(cl:defmethod plugin_type-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:plugin_type-val is deprecated.  Use mujoco_ros_msgs-msg:plugin_type instead.")
  (plugin_type m))

(cl:ensure-generic-function 'load_time-val :lambda-list '(m))
(cl:defmethod load_time-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:load_time-val is deprecated.  Use mujoco_ros_msgs-msg:load_time instead.")
  (load_time m))

(cl:ensure-generic-function 'reset_time-val :lambda-list '(m))
(cl:defmethod reset_time-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:reset_time-val is deprecated.  Use mujoco_ros_msgs-msg:reset_time instead.")
  (reset_time m))

(cl:ensure-generic-function 'ema_steptime_control-val :lambda-list '(m))
(cl:defmethod ema_steptime_control-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:ema_steptime_control-val is deprecated.  Use mujoco_ros_msgs-msg:ema_steptime_control instead.")
  (ema_steptime_control m))

(cl:ensure-generic-function 'ema_steptime_passive-val :lambda-list '(m))
(cl:defmethod ema_steptime_passive-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:ema_steptime_passive-val is deprecated.  Use mujoco_ros_msgs-msg:ema_steptime_passive instead.")
  (ema_steptime_passive m))

(cl:ensure-generic-function 'ema_steptime_render-val :lambda-list '(m))
(cl:defmethod ema_steptime_render-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:ema_steptime_render-val is deprecated.  Use mujoco_ros_msgs-msg:ema_steptime_render instead.")
  (ema_steptime_render m))

(cl:ensure-generic-function 'ema_steptime_last_stage-val :lambda-list '(m))
(cl:defmethod ema_steptime_last_stage-val ((m <PluginStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:ema_steptime_last_stage-val is deprecated.  Use mujoco_ros_msgs-msg:ema_steptime_last_stage instead.")
  (ema_steptime_last_stage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PluginStats>) ostream)
  "Serializes a message object of type '<PluginStats>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plugin_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plugin_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'load_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reset_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ema_steptime_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ema_steptime_passive))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ema_steptime_render))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ema_steptime_last_stage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PluginStats>) istream)
  "Deserializes a message object of type '<PluginStats>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plugin_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plugin_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'load_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reset_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ema_steptime_control) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ema_steptime_passive) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ema_steptime_render) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ema_steptime_last_stage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PluginStats>)))
  "Returns string type for a message object of type '<PluginStats>"
  "mujoco_ros_msgs/PluginStats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PluginStats)))
  "Returns string type for a message object of type 'PluginStats"
  "mujoco_ros_msgs/PluginStats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PluginStats>)))
  "Returns md5sum for a message object of type '<PluginStats>"
  "8952a8d56593bd9d53888ef079c075b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PluginStats)))
  "Returns md5sum for a message object of type 'PluginStats"
  "8952a8d56593bd9d53888ef079c075b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PluginStats>)))
  "Returns full string definition for message of type '<PluginStats>"
  (cl:format cl:nil "string plugin_type~%float32 load_time~%float32 reset_time~%float32 ema_steptime_control~%float32 ema_steptime_passive~%float32 ema_steptime_render~%float32 ema_steptime_last_stage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PluginStats)))
  "Returns full string definition for message of type 'PluginStats"
  (cl:format cl:nil "string plugin_type~%float32 load_time~%float32 reset_time~%float32 ema_steptime_control~%float32 ema_steptime_passive~%float32 ema_steptime_render~%float32 ema_steptime_last_stage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PluginStats>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'plugin_type))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PluginStats>))
  "Converts a ROS message object to a list"
  (cl:list 'PluginStats
    (cl:cons ':plugin_type (plugin_type msg))
    (cl:cons ':load_time (load_time msg))
    (cl:cons ':reset_time (reset_time msg))
    (cl:cons ':ema_steptime_control (ema_steptime_control msg))
    (cl:cons ':ema_steptime_passive (ema_steptime_passive msg))
    (cl:cons ':ema_steptime_render (ema_steptime_render msg))
    (cl:cons ':ema_steptime_last_stage (ema_steptime_last_stage msg))
))
