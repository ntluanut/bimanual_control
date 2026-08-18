; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude GetPluginStats-request.msg.html

(cl:defclass <GetPluginStats-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPluginStats-request (<GetPluginStats-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPluginStats-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPluginStats-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetPluginStats-request> is deprecated: use mujoco_ros_msgs-srv:GetPluginStats-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPluginStats-request>) ostream)
  "Serializes a message object of type '<GetPluginStats-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPluginStats-request>) istream)
  "Deserializes a message object of type '<GetPluginStats-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPluginStats-request>)))
  "Returns string type for a service object of type '<GetPluginStats-request>"
  "mujoco_ros_msgs/GetPluginStatsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPluginStats-request)))
  "Returns string type for a service object of type 'GetPluginStats-request"
  "mujoco_ros_msgs/GetPluginStatsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPluginStats-request>)))
  "Returns md5sum for a message object of type '<GetPluginStats-request>"
  "7d3043450de18344352d2d333c449deb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPluginStats-request)))
  "Returns md5sum for a message object of type 'GetPluginStats-request"
  "7d3043450de18344352d2d333c449deb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPluginStats-request>)))
  "Returns full string definition for message of type '<GetPluginStats-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPluginStats-request)))
  "Returns full string definition for message of type 'GetPluginStats-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPluginStats-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPluginStats-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPluginStats-request
))
;//! \htmlinclude GetPluginStats-response.msg.html

(cl:defclass <GetPluginStats-response> (roslisp-msg-protocol:ros-message)
  ((stats
    :reader stats
    :initarg :stats
    :type (cl:vector mujoco_ros_msgs-msg:PluginStats)
   :initform (cl:make-array 0 :element-type 'mujoco_ros_msgs-msg:PluginStats :initial-element (cl:make-instance 'mujoco_ros_msgs-msg:PluginStats))))
)

(cl:defclass GetPluginStats-response (<GetPluginStats-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPluginStats-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPluginStats-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetPluginStats-response> is deprecated: use mujoco_ros_msgs-srv:GetPluginStats-response instead.")))

(cl:ensure-generic-function 'stats-val :lambda-list '(m))
(cl:defmethod stats-val ((m <GetPluginStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:stats-val is deprecated.  Use mujoco_ros_msgs-srv:stats instead.")
  (stats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPluginStats-response>) ostream)
  "Serializes a message object of type '<GetPluginStats-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stats))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stats))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPluginStats-response>) istream)
  "Deserializes a message object of type '<GetPluginStats-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stats) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stats)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mujoco_ros_msgs-msg:PluginStats))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPluginStats-response>)))
  "Returns string type for a service object of type '<GetPluginStats-response>"
  "mujoco_ros_msgs/GetPluginStatsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPluginStats-response)))
  "Returns string type for a service object of type 'GetPluginStats-response"
  "mujoco_ros_msgs/GetPluginStatsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPluginStats-response>)))
  "Returns md5sum for a message object of type '<GetPluginStats-response>"
  "7d3043450de18344352d2d333c449deb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPluginStats-response)))
  "Returns md5sum for a message object of type 'GetPluginStats-response"
  "7d3043450de18344352d2d333c449deb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPluginStats-response>)))
  "Returns full string definition for message of type '<GetPluginStats-response>"
  (cl:format cl:nil "mujoco_ros_msgs/PluginStats[] stats~%~%~%================================================================================~%MSG: mujoco_ros_msgs/PluginStats~%string plugin_type~%float32 load_time~%float32 reset_time~%float32 ema_steptime_control~%float32 ema_steptime_passive~%float32 ema_steptime_render~%float32 ema_steptime_last_stage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPluginStats-response)))
  "Returns full string definition for message of type 'GetPluginStats-response"
  (cl:format cl:nil "mujoco_ros_msgs/PluginStats[] stats~%~%~%================================================================================~%MSG: mujoco_ros_msgs/PluginStats~%string plugin_type~%float32 load_time~%float32 reset_time~%float32 ema_steptime_control~%float32 ema_steptime_passive~%float32 ema_steptime_render~%float32 ema_steptime_last_stage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPluginStats-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stats) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPluginStats-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPluginStats-response
    (cl:cons ':stats (stats msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPluginStats)))
  'GetPluginStats-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPluginStats)))
  'GetPluginStats-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPluginStats)))
  "Returns string type for a service object of type '<GetPluginStats>"
  "mujoco_ros_msgs/GetPluginStats")