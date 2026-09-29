; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-msg)


;//! \htmlinclude SimInfo.msg.html

(cl:defclass <SimInfo> (roslisp-msg-protocol:ros-message)
  ((model_path
    :reader model_path
    :initarg :model_path
    :type cl:string
    :initform "")
   (model_valid
    :reader model_valid
    :initarg :model_valid
    :type cl:boolean
    :initform cl:nil)
   (load_count
    :reader load_count
    :initarg :load_count
    :type cl:fixnum
    :initform 0)
   (loading_state
    :reader loading_state
    :initarg :loading_state
    :type mujoco_ros_msgs-msg:StateUint
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:StateUint))
   (paused
    :reader paused
    :initarg :paused
    :type cl:boolean
    :initform cl:nil)
   (pending_sim_steps
    :reader pending_sim_steps
    :initarg :pending_sim_steps
    :type cl:fixnum
    :initform 0)
   (rt_measured
    :reader rt_measured
    :initarg :rt_measured
    :type cl:float
    :initform 0.0)
   (rt_setting
    :reader rt_setting
    :initarg :rt_setting
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimInfo (<SimInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-msg:<SimInfo> is deprecated: use mujoco_ros_msgs-msg:SimInfo instead.")))

(cl:ensure-generic-function 'model_path-val :lambda-list '(m))
(cl:defmethod model_path-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:model_path-val is deprecated.  Use mujoco_ros_msgs-msg:model_path instead.")
  (model_path m))

(cl:ensure-generic-function 'model_valid-val :lambda-list '(m))
(cl:defmethod model_valid-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:model_valid-val is deprecated.  Use mujoco_ros_msgs-msg:model_valid instead.")
  (model_valid m))

(cl:ensure-generic-function 'load_count-val :lambda-list '(m))
(cl:defmethod load_count-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:load_count-val is deprecated.  Use mujoco_ros_msgs-msg:load_count instead.")
  (load_count m))

(cl:ensure-generic-function 'loading_state-val :lambda-list '(m))
(cl:defmethod loading_state-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:loading_state-val is deprecated.  Use mujoco_ros_msgs-msg:loading_state instead.")
  (loading_state m))

(cl:ensure-generic-function 'paused-val :lambda-list '(m))
(cl:defmethod paused-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:paused-val is deprecated.  Use mujoco_ros_msgs-msg:paused instead.")
  (paused m))

(cl:ensure-generic-function 'pending_sim_steps-val :lambda-list '(m))
(cl:defmethod pending_sim_steps-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:pending_sim_steps-val is deprecated.  Use mujoco_ros_msgs-msg:pending_sim_steps instead.")
  (pending_sim_steps m))

(cl:ensure-generic-function 'rt_measured-val :lambda-list '(m))
(cl:defmethod rt_measured-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:rt_measured-val is deprecated.  Use mujoco_ros_msgs-msg:rt_measured instead.")
  (rt_measured m))

(cl:ensure-generic-function 'rt_setting-val :lambda-list '(m))
(cl:defmethod rt_setting-val ((m <SimInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-msg:rt_setting-val is deprecated.  Use mujoco_ros_msgs-msg:rt_setting instead.")
  (rt_setting m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimInfo>) ostream)
  "Serializes a message object of type '<SimInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'model_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'load_count)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'loading_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'paused) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pending_sim_steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pending_sim_steps)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rt_measured))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rt_setting))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimInfo>) istream)
  "Deserializes a message object of type '<SimInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'model_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'load_count)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'loading_state) istream)
    (cl:setf (cl:slot-value msg 'paused) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pending_sim_steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pending_sim_steps)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rt_measured) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rt_setting) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimInfo>)))
  "Returns string type for a message object of type '<SimInfo>"
  "mujoco_ros_msgs/SimInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimInfo)))
  "Returns string type for a message object of type 'SimInfo"
  "mujoco_ros_msgs/SimInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimInfo>)))
  "Returns md5sum for a message object of type '<SimInfo>"
  "50fb0bcacffb362708f3fc623e7e9a63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimInfo)))
  "Returns md5sum for a message object of type 'SimInfo"
  "50fb0bcacffb362708f3fc623e7e9a63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimInfo>)))
  "Returns full string definition for message of type '<SimInfo>"
  (cl:format cl:nil "string model_path~%bool model_valid~%uint16 load_count # counter of (re)loads~%mujoco_ros_msgs/StateUint loading_state~%bool paused~%uint16 pending_sim_steps~%float32 rt_measured # measured real-time factor~%float32 rt_setting # desired real-time factor~%~%================================================================================~%MSG: mujoco_ros_msgs/StateUint~%uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimInfo)))
  "Returns full string definition for message of type 'SimInfo"
  (cl:format cl:nil "string model_path~%bool model_valid~%uint16 load_count # counter of (re)loads~%mujoco_ros_msgs/StateUint loading_state~%bool paused~%uint16 pending_sim_steps~%float32 rt_measured # measured real-time factor~%float32 rt_setting # desired real-time factor~%~%================================================================================~%MSG: mujoco_ros_msgs/StateUint~%uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_path))
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'loading_state))
     1
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SimInfo
    (cl:cons ':model_path (model_path msg))
    (cl:cons ':model_valid (model_valid msg))
    (cl:cons ':load_count (load_count msg))
    (cl:cons ':loading_state (loading_state msg))
    (cl:cons ':paused (paused msg))
    (cl:cons ':pending_sim_steps (pending_sim_steps msg))
    (cl:cons ':rt_measured (rt_measured msg))
    (cl:cons ':rt_setting (rt_setting msg))
))
