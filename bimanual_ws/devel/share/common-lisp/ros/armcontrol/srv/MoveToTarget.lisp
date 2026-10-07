; Auto-generated. Do not edit!


(cl:in-package armcontrol-srv)


;//! \htmlinclude MoveToTarget-request.msg.html

(cl:defclass <MoveToTarget-request> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveToTarget-request (<MoveToTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armcontrol-srv:<MoveToTarget-request> is deprecated: use armcontrol-srv:MoveToTarget-request instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <MoveToTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:arm-val is deprecated.  Use armcontrol-srv:arm instead.")
  (arm m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MoveToTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:x-val is deprecated.  Use armcontrol-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MoveToTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:y-val is deprecated.  Use armcontrol-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <MoveToTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:z-val is deprecated.  Use armcontrol-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToTarget-request>) ostream)
  "Serializes a message object of type '<MoveToTarget-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arm))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToTarget-request>) istream)
  "Deserializes a message object of type '<MoveToTarget-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arm) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'arm) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToTarget-request>)))
  "Returns string type for a service object of type '<MoveToTarget-request>"
  "armcontrol/MoveToTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTarget-request)))
  "Returns string type for a service object of type 'MoveToTarget-request"
  "armcontrol/MoveToTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToTarget-request>)))
  "Returns md5sum for a message object of type '<MoveToTarget-request>"
  "350d48a9c3526923e8d975c2c3cd295a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToTarget-request)))
  "Returns md5sum for a message object of type 'MoveToTarget-request"
  "350d48a9c3526923e8d975c2c3cd295a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToTarget-request>)))
  "Returns full string definition for message of type '<MoveToTarget-request>"
  (cl:format cl:nil "string arm~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToTarget-request)))
  "Returns full string definition for message of type 'MoveToTarget-request"
  (cl:format cl:nil "string arm~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToTarget-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'arm))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToTarget-request
    (cl:cons ':arm (arm msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude MoveToTarget-response.msg.html

(cl:defclass <MoveToTarget-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveToTarget-response (<MoveToTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armcontrol-srv:<MoveToTarget-response> is deprecated: use armcontrol-srv:MoveToTarget-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToTarget-response>) ostream)
  "Serializes a message object of type '<MoveToTarget-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToTarget-response>) istream)
  "Deserializes a message object of type '<MoveToTarget-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToTarget-response>)))
  "Returns string type for a service object of type '<MoveToTarget-response>"
  "armcontrol/MoveToTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTarget-response)))
  "Returns string type for a service object of type 'MoveToTarget-response"
  "armcontrol/MoveToTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToTarget-response>)))
  "Returns md5sum for a message object of type '<MoveToTarget-response>"
  "350d48a9c3526923e8d975c2c3cd295a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToTarget-response)))
  "Returns md5sum for a message object of type 'MoveToTarget-response"
  "350d48a9c3526923e8d975c2c3cd295a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToTarget-response>)))
  "Returns full string definition for message of type '<MoveToTarget-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToTarget-response)))
  "Returns full string definition for message of type 'MoveToTarget-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToTarget-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToTarget-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToTarget)))
  'MoveToTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToTarget)))
  'MoveToTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTarget)))
  "Returns string type for a service object of type '<MoveToTarget>"
  "armcontrol/MoveToTarget")