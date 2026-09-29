; Auto-generated. Do not edit!


(cl:in-package mujoco_ros_msgs-srv)


;//! \htmlinclude SetMocapState-request.msg.html

(cl:defclass <SetMocapState-request> (roslisp-msg-protocol:ros-message)
  ((mocap_state
    :reader mocap_state
    :initarg :mocap_state
    :type mujoco_ros_msgs-msg:MocapState
    :initform (cl:make-instance 'mujoco_ros_msgs-msg:MocapState)))
)

(cl:defclass SetMocapState-request (<SetMocapState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMocapState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMocapState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetMocapState-request> is deprecated: use mujoco_ros_msgs-srv:SetMocapState-request instead.")))

(cl:ensure-generic-function 'mocap_state-val :lambda-list '(m))
(cl:defmethod mocap_state-val ((m <SetMocapState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:mocap_state-val is deprecated.  Use mujoco_ros_msgs-srv:mocap_state instead.")
  (mocap_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMocapState-request>) ostream)
  "Serializes a message object of type '<SetMocapState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mocap_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMocapState-request>) istream)
  "Deserializes a message object of type '<SetMocapState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mocap_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMocapState-request>)))
  "Returns string type for a service object of type '<SetMocapState-request>"
  "mujoco_ros_msgs/SetMocapStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMocapState-request)))
  "Returns string type for a service object of type 'SetMocapState-request"
  "mujoco_ros_msgs/SetMocapStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMocapState-request>)))
  "Returns md5sum for a message object of type '<SetMocapState-request>"
  "59922d272c5d8f5030a19521538c2732")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMocapState-request)))
  "Returns md5sum for a message object of type 'SetMocapState-request"
  "59922d272c5d8f5030a19521538c2732")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMocapState-request>)))
  "Returns full string definition for message of type '<SetMocapState-request>"
  (cl:format cl:nil "mujoco_ros_msgs/MocapState mocap_state~%~%================================================================================~%MSG: mujoco_ros_msgs/MocapState~%string[] name~%geometry_msgs/PoseStamped[] pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMocapState-request)))
  "Returns full string definition for message of type 'SetMocapState-request"
  (cl:format cl:nil "mujoco_ros_msgs/MocapState mocap_state~%~%================================================================================~%MSG: mujoco_ros_msgs/MocapState~%string[] name~%geometry_msgs/PoseStamped[] pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMocapState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mocap_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMocapState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMocapState-request
    (cl:cons ':mocap_state (mocap_state msg))
))
;//! \htmlinclude SetMocapState-response.msg.html

(cl:defclass <SetMocapState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMocapState-response (<SetMocapState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMocapState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMocapState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mujoco_ros_msgs-srv:<SetMocapState-response> is deprecated: use mujoco_ros_msgs-srv:SetMocapState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMocapState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mujoco_ros_msgs-srv:success-val is deprecated.  Use mujoco_ros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMocapState-response>) ostream)
  "Serializes a message object of type '<SetMocapState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMocapState-response>) istream)
  "Deserializes a message object of type '<SetMocapState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMocapState-response>)))
  "Returns string type for a service object of type '<SetMocapState-response>"
  "mujoco_ros_msgs/SetMocapStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMocapState-response)))
  "Returns string type for a service object of type 'SetMocapState-response"
  "mujoco_ros_msgs/SetMocapStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMocapState-response>)))
  "Returns md5sum for a message object of type '<SetMocapState-response>"
  "59922d272c5d8f5030a19521538c2732")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMocapState-response)))
  "Returns md5sum for a message object of type 'SetMocapState-response"
  "59922d272c5d8f5030a19521538c2732")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMocapState-response>)))
  "Returns full string definition for message of type '<SetMocapState-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMocapState-response)))
  "Returns full string definition for message of type 'SetMocapState-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMocapState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMocapState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMocapState-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMocapState)))
  'SetMocapState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMocapState)))
  'SetMocapState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMocapState)))
  "Returns string type for a service object of type '<SetMocapState>"
  "mujoco_ros_msgs/SetMocapState")