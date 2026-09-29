; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude GetStateUint-request.msg.html

(cl:defclass <GetStateUint-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStateUint-request (<GetStateUint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStateUint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStateUint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetStateUint-request> is deprecated: use mujoco_ros_msgs-srv:GetStateUint-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStateUint-request>) ostream)
  "Serializes a message object of type '<GetStateUint-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStateUint-request>) istream)
  "Deserializes a message object of type '<GetStateUint-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStateUint-request>)))
  "Returns string type for a service object of type '<GetStateUint-request>"
  "mujoco_ros_msgs/GetStateUintRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStateUint-request)))
  "Returns string type for a service object of type 'GetStateUint-request"
  "mujoco_ros_msgs/GetStateUintRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStateUint-request>)))
  "Returns md5sum for a message object of type '<GetStateUint-request>"
  "e15f8271e1c8147c518f22f4076ebd9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStateUint-request)))
  "Returns md5sum for a message object of type 'GetStateUint-request"
  "e15f8271e1c8147c518f22f4076ebd9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStateUint-request>)))
  "Returns full string definition for message of type '<GetStateUint-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStateUint-request)))
  "Returns full string definition for message of type 'GetStateUint-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStateUint-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStateUint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStateUint-request
))
;//! \htmlinclude GetStateUint-response.msg.html

(cl:defclass <GetStateUint-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type mujoco_ros_msgs-msg:StateUint
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:StateUint)))
)

(cl:defclass GetStateUint-response (<GetStateUint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStateUint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStateUint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<GetStateUint-response> is deprecated: use mujoco_ros_msgs-srv:GetStateUint-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetStateUint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:state-val is deprecated.  Use mujoco_ros_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStateUint-response>) ostream)
  "Serializes a message object of type '<GetStateUint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStateUint-response>) istream)
  "Deserializes a message object of type '<GetStateUint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStateUint-response>)))
  "Returns string type for a service object of type '<GetStateUint-response>"
  "mujoco_ros_msgs/GetStateUintResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStateUint-response)))
  "Returns string type for a service object of type 'GetStateUint-response"
  "mujoco_ros_msgs/GetStateUintResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStateUint-response>)))
  "Returns md5sum for a message object of type '<GetStateUint-response>"
  "e15f8271e1c8147c518f22f4076ebd9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStateUint-response)))
  "Returns md5sum for a message object of type 'GetStateUint-response"
  "e15f8271e1c8147c518f22f4076ebd9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStateUint-response>)))
  "Returns full string definition for message of type '<GetStateUint-response>"
  (cl:format cl:nil "mujoco_ros_msgs/StateUint state~%~%~%================================================================================~%MSG: mujoco_ros_msgs/StateUint~%uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStateUint-response)))
  "Returns full string definition for message of type 'GetStateUint-response"
  (cl:format cl:nil "mujoco_ros_msgs/StateUint state~%~%~%================================================================================~%MSG: mujoco_ros_msgs/StateUint~%uint8 value~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStateUint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStateUint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStateUint-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStateUint)))
  'GetStateUint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStateUint)))
  'GetStateUint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStateUint)))
  "Returns string type for a service object of type '<GetStateUint>"
  "mujoco_ros_msgs/GetStateUint")