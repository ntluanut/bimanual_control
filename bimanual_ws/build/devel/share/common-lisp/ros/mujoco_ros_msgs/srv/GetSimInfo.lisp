; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude GetSimInfo-request.msg.html

(cl:defclass <GetSimInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetSimInfo-request (<GetSimInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSimInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSimInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetSimInfo-request> is deprecated: use mujoco_ros_msgs-srv:GetSimInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSimInfo-request>) ostream)
  "Serializes a message object of type '<GetSimInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSimInfo-request>) istream)
  "Deserializes a message object of type '<GetSimInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSimInfo-request>)))
  "Returns string type for a service object of type '<GetSimInfo-request>"
  "mujoco_ros_msgs/GetSimInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSimInfo-request)))
  "Returns string type for a service object of type 'GetSimInfo-request"
  "mujoco_ros_msgs/GetSimInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSimInfo-request>)))
  "Returns md5sum for a message object of type '<GetSimInfo-request>"
  "9d1bcf43ea2e10aaf5f5745e953cd88d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSimInfo-request)))
  "Returns md5sum for a message object of type 'GetSimInfo-request"
  "9d1bcf43ea2e10aaf5f5745e953cd88d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSimInfo-request>)))
  "Returns full string definition for message of type '<GetSimInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSimInfo-request)))
  "Returns full string definition for message of type 'GetSimInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSimInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSimInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSimInfo-request
))
;//! \htmlinclude GetSimInfo-response.msg.html

(cl:defclass <GetSimInfo-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type mujoco_ros_msgs-msg:SimInfo
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:SimInfo)))
)

(cl:defclass GetSimInfo-response (<GetSimInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSimInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSimInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetSimInfo-response> is deprecated: use mujoco_ros_msgs-srv:GetSimInfo-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetSimInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:state-val is deprecated.  Use mujoco_ros_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSimInfo-response>) ostream)
  "Serializes a message object of type '<GetSimInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSimInfo-response>) istream)
  "Deserializes a message object of type '<GetSimInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSimInfo-response>)))
  "Returns string type for a service object of type '<GetSimInfo-response>"
  "mujoco_ros_msgs/GetSimInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSimInfo-response)))
  "Returns string type for a service object of type 'GetSimInfo-response"
  "mujoco_ros_msgs/GetSimInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSimInfo-response>)))
  "Returns md5sum for a message object of type '<GetSimInfo-response>"
  "9d1bcf43ea2e10aaf5f5745e953cd88d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSimInfo-response)))
  "Returns md5sum for a message object of type 'GetSimInfo-response"
  "9d1bcf43ea2e10aaf5f5745e953cd88d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSimInfo-response>)))
  "Returns full string definition for message of type '<GetSimInfo-response>"
  (cl:format cl:nil "mujoco_ros_msgs/SimInfo state~%~%~%================================================================================~%MSG: mujoco_ros_msgs/SimInfo~%string model_path~%bool model_valid~%uint16 load_count # counter of (re)loads~%mujoco_ros_msgs/StateUint loading_state~%bool paused~%uint16 pending_sim_steps~%float32 rt_measured # measured real-time factor~%float32 rt_setting # desired real-time factor~%~%================================================================================~%MSG: mujoco_ros_msgs/StateUint~%uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSimInfo-response)))
  "Returns full string definition for message of type 'GetSimInfo-response"
  (cl:format cl:nil "mujoco_ros_msgs/SimInfo state~%~%~%================================================================================~%MSG: mujoco_ros_msgs/SimInfo~%string model_path~%bool model_valid~%uint16 load_count # counter of (re)loads~%mujoco_ros_msgs/StateUint loading_state~%bool paused~%uint16 pending_sim_steps~%float32 rt_measured # measured real-time factor~%float32 rt_setting # desired real-time factor~%~%================================================================================~%MSG: mujoco_ros_msgs/StateUint~%uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSimInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSimInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSimInfo-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSimInfo)))
  'GetSimInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSimInfo)))
  'GetSimInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSimInfo)))
  "Returns string type for a service object of type '<GetSimInfo>"
  "mujoco_ros_msgs/GetSimInfo")