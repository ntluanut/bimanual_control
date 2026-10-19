; Auto-generated. Do not edit!


(cl:in-package armcontrol-srv)


;//! \htmlinclude MoveToTargetOri-request.msg.html

(cl:defclass <MoveToTargetOri-request> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:string
    :initform "")
   (qx
    :reader qx
    :initarg :qx
    :type cl:float
    :initform 0.0)
   (qy
    :reader qy
    :initarg :qy
    :type cl:float
    :initform 0.0)
   (qz
    :reader qz
    :initarg :qz
    :type cl:float
    :initform 0.0)
   (qw
    :reader qw
    :initarg :qw
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveToTargetOri-request (<MoveToTargetOri-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToTargetOri-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToTargetOri-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armcontrol-srv:<MoveToTargetOri-request> is deprecated: use armcontrol-srv:MoveToTargetOri-request instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <MoveToTargetOri-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:arm-val is deprecated.  Use armcontrol-srv:arm instead.")
  (arm m))

(cl:ensure-generic-function 'qx-val :lambda-list '(m))
(cl:defmethod qx-val ((m <MoveToTargetOri-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:qx-val is deprecated.  Use armcontrol-srv:qx instead.")
  (qx m))

(cl:ensure-generic-function 'qy-val :lambda-list '(m))
(cl:defmethod qy-val ((m <MoveToTargetOri-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:qy-val is deprecated.  Use armcontrol-srv:qy instead.")
  (qy m))

(cl:ensure-generic-function 'qz-val :lambda-list '(m))
(cl:defmethod qz-val ((m <MoveToTargetOri-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:qz-val is deprecated.  Use armcontrol-srv:qz instead.")
  (qz m))

(cl:ensure-generic-function 'qw-val :lambda-list '(m))
(cl:defmethod qw-val ((m <MoveToTargetOri-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:qw-val is deprecated.  Use armcontrol-srv:qw instead.")
  (qw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToTargetOri-request>) ostream)
  "Serializes a message object of type '<MoveToTargetOri-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'arm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'arm))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToTargetOri-request>) istream)
  "Deserializes a message object of type '<MoveToTargetOri-request>"
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
    (cl:setf (cl:slot-value msg 'qx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToTargetOri-request>)))
  "Returns string type for a service object of type '<MoveToTargetOri-request>"
  "armcontrol/MoveToTargetOriRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTargetOri-request)))
  "Returns string type for a service object of type 'MoveToTargetOri-request"
  "armcontrol/MoveToTargetOriRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToTargetOri-request>)))
  "Returns md5sum for a message object of type '<MoveToTargetOri-request>"
  "e466be8ecf2aa51b986a6adfb9b0147e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToTargetOri-request)))
  "Returns md5sum for a message object of type 'MoveToTargetOri-request"
  "e466be8ecf2aa51b986a6adfb9b0147e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToTargetOri-request>)))
  "Returns full string definition for message of type '<MoveToTargetOri-request>"
  (cl:format cl:nil "string arm~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToTargetOri-request)))
  "Returns full string definition for message of type 'MoveToTargetOri-request"
  (cl:format cl:nil "string arm~%float64 qx~%float64 qy~%float64 qz~%float64 qw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToTargetOri-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'arm))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToTargetOri-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToTargetOri-request
    (cl:cons ':arm (arm msg))
    (cl:cons ':qx (qx msg))
    (cl:cons ':qy (qy msg))
    (cl:cons ':qz (qz msg))
    (cl:cons ':qw (qw msg))
))
;//! \htmlinclude MoveToTargetOri-response.msg.html

(cl:defclass <MoveToTargetOri-response> (roslisp-msg-protocol:ros-message)
  ((reached
    :reader reached
    :initarg :reached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveToTargetOri-response (<MoveToTargetOri-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToTargetOri-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToTargetOri-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name armcontrol-srv:<MoveToTargetOri-response> is deprecated: use armcontrol-srv:MoveToTargetOri-response instead.")))

(cl:ensure-generic-function 'reached-val :lambda-list '(m))
(cl:defmethod reached-val ((m <MoveToTargetOri-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader armcontrol-srv:reached-val is deprecated.  Use armcontrol-srv:reached instead.")
  (reached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToTargetOri-response>) ostream)
  "Serializes a message object of type '<MoveToTargetOri-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToTargetOri-response>) istream)
  "Deserializes a message object of type '<MoveToTargetOri-response>"
    (cl:setf (cl:slot-value msg 'reached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToTargetOri-response>)))
  "Returns string type for a service object of type '<MoveToTargetOri-response>"
  "armcontrol/MoveToTargetOriResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTargetOri-response)))
  "Returns string type for a service object of type 'MoveToTargetOri-response"
  "armcontrol/MoveToTargetOriResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToTargetOri-response>)))
  "Returns md5sum for a message object of type '<MoveToTargetOri-response>"
  "e466be8ecf2aa51b986a6adfb9b0147e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToTargetOri-response)))
  "Returns md5sum for a message object of type 'MoveToTargetOri-response"
  "e466be8ecf2aa51b986a6adfb9b0147e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToTargetOri-response>)))
  "Returns full string definition for message of type '<MoveToTargetOri-response>"
  (cl:format cl:nil "bool reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToTargetOri-response)))
  "Returns full string definition for message of type 'MoveToTargetOri-response"
  (cl:format cl:nil "bool reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToTargetOri-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToTargetOri-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToTargetOri-response
    (cl:cons ':reached (reached msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToTargetOri)))
  'MoveToTargetOri-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToTargetOri)))
  'MoveToTargetOri-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTargetOri)))
  "Returns string type for a service object of type '<MoveToTargetOri>"
  "armcontrol/MoveToTargetOri")