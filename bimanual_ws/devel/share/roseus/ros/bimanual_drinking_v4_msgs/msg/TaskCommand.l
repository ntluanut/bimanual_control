;; Auto-generated. Do not edit!


(when (boundp 'bimanual_drinking_v4_msgs::TaskCommand)
  (if (not (find-package "BIMANUAL_DRINKING_V4_MSGS"))
    (make-package "BIMANUAL_DRINKING_V4_MSGS"))
  (shadow 'TaskCommand (find-package "BIMANUAL_DRINKING_V4_MSGS")))
(unless (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND")
  (make-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TaskCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATUS*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*STATUS* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*STATUS* 0)
(intern "*CLEAR_ESTOP*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*CLEAR_ESTOP* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*CLEAR_ESTOP* 1)
(intern "*STOP*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*STOP* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*STOP* 2)
(intern "*HOME*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*HOME* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*HOME* 10)
(intern "*BOTTLE_PREGRASP*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*BOTTLE_PREGRASP* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*BOTTLE_PREGRASP* 20)
(intern "*BOTTLE_GRASP*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*BOTTLE_GRASP* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*BOTTLE_GRASP* 21)
(intern "*CAP_PREGRASP*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*CAP_PREGRASP* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*CAP_PREGRASP* 30)
(intern "*CAP_GRASP*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*CAP_GRASP* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*CAP_GRASP* 31)
(intern "*UNSCREW*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*UNSCREW* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*UNSCREW* 32)
(intern "*CAP_RETREAT*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*CAP_RETREAT* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*CAP_RETREAT* 33)
(intern "*LIFT_BOTTLE*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*LIFT_BOTTLE* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*LIFT_BOTTLE* 40)
(intern "*RETURN_HOME*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*RETURN_HOME* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*RETURN_HOME* 50)
(intern "*RUN_BOTTLE_CAP_SEQUENCE*" (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(shadow '*RUN_BOTTLE_CAP_SEQUENCE* (find-package "BIMANUAL_DRINKING_V4_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v4_msgs::TaskCommand::*RUN_BOTTLE_CAP_SEQUENCE* 100)

(defun bimanual_drinking_v4_msgs::TaskCommand-to-symbol (const)
  (cond
        ((= const 0) 'bimanual_drinking_v4_msgs::TaskCommand::*STATUS*)
        ((= const 1) 'bimanual_drinking_v4_msgs::TaskCommand::*CLEAR_ESTOP*)
        ((= const 2) 'bimanual_drinking_v4_msgs::TaskCommand::*STOP*)
        ((= const 10) 'bimanual_drinking_v4_msgs::TaskCommand::*HOME*)
        ((= const 20) 'bimanual_drinking_v4_msgs::TaskCommand::*BOTTLE_PREGRASP*)
        ((= const 21) 'bimanual_drinking_v4_msgs::TaskCommand::*BOTTLE_GRASP*)
        ((= const 30) 'bimanual_drinking_v4_msgs::TaskCommand::*CAP_PREGRASP*)
        ((= const 31) 'bimanual_drinking_v4_msgs::TaskCommand::*CAP_GRASP*)
        ((= const 32) 'bimanual_drinking_v4_msgs::TaskCommand::*UNSCREW*)
        ((= const 33) 'bimanual_drinking_v4_msgs::TaskCommand::*CAP_RETREAT*)
        ((= const 40) 'bimanual_drinking_v4_msgs::TaskCommand::*LIFT_BOTTLE*)
        ((= const 50) 'bimanual_drinking_v4_msgs::TaskCommand::*RETURN_HOME*)
        ((= const 100) 'bimanual_drinking_v4_msgs::TaskCommand::*RUN_BOTTLE_CAP_SEQUENCE*)
        (t nil)))

(defclass bimanual_drinking_v4_msgs::TaskCommand
  :super ros::object
  :slots (_header _command _speed_scale _use_relative_planning ))

(defmethod bimanual_drinking_v4_msgs::TaskCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) 0)
    ((:speed_scale __speed_scale) 0.0)
    ((:use_relative_planning __use_relative_planning) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command (round __command))
   (setq _speed_scale (float __speed_scale))
   (setq _use_relative_planning __use_relative_planning)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:speed_scale
   (&optional __speed_scale)
   (if __speed_scale (setq _speed_scale __speed_scale)) _speed_scale)
  (:use_relative_planning
   (&optional (__use_relative_planning :null))
   (if (not (eq __use_relative_planning :null)) (setq _use_relative_planning __use_relative_planning)) _use_relative_planning)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _command
    1
    ;; float32 _speed_scale
    4
    ;; bool _use_relative_planning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _command
       (write-byte _command s)
     ;; float32 _speed_scale
       (sys::poke _speed_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _use_relative_planning
       (if _use_relative_planning (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed_scale
     (setq _speed_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _use_relative_planning
     (setq _use_relative_planning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bimanual_drinking_v4_msgs::TaskCommand :md5sum-) "17bd5cd1727d685e66c27d5606d0e4d0")
(setf (get bimanual_drinking_v4_msgs::TaskCommand :datatype-) "bimanual_drinking_v4_msgs/TaskCommand")
(setf (get bimanual_drinking_v4_msgs::TaskCommand :definition-)
      "std_msgs/Header header
uint8 STATUS=0
uint8 CLEAR_ESTOP=1
uint8 STOP=2
uint8 HOME=10
uint8 BOTTLE_PREGRASP=20
uint8 BOTTLE_GRASP=21
uint8 CAP_PREGRASP=30
uint8 CAP_GRASP=31
uint8 UNSCREW=32
uint8 CAP_RETREAT=33
uint8 LIFT_BOTTLE=40
uint8 RETURN_HOME=50
uint8 RUN_BOTTLE_CAP_SEQUENCE=100
uint8 command
float32 speed_scale
bool use_relative_planning

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :bimanual_drinking_v4_msgs/TaskCommand "17bd5cd1727d685e66c27d5606d0e4d0")


