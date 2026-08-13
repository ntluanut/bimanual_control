;; Auto-generated. Do not edit!


(when (boundp 'bimanual_drinking_v5_msgs::TaskCommand)
  (if (not (find-package "BIMANUAL_DRINKING_V5_MSGS"))
    (make-package "BIMANUAL_DRINKING_V5_MSGS"))
  (shadow 'TaskCommand (find-package "BIMANUAL_DRINKING_V5_MSGS")))
(unless (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND")
  (make-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TaskCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATUS*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*STATUS* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*STATUS* 0)
(intern "*STOP*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*STOP* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*STOP* 1)
(intern "*CLEAR_ESTOP*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*CLEAR_ESTOP* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*CLEAR_ESTOP* 2)
(intern "*HOME_HANDS*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*HOME_HANDS* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*HOME_HANDS* 3)
(intern "*RUN_BOTTLE_CAP_SEQUENCE*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*RUN_BOTTLE_CAP_SEQUENCE* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*RUN_BOTTLE_CAP_SEQUENCE* 10)
(intern "*MOVE_LEFT_PREGRASP*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*MOVE_LEFT_PREGRASP* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*MOVE_LEFT_PREGRASP* 20)
(intern "*GRASP_BOTTLE*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*GRASP_BOTTLE* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*GRASP_BOTTLE* 21)
(intern "*MOVE_RIGHT_PREGRASP*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*MOVE_RIGHT_PREGRASP* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*MOVE_RIGHT_PREGRASP* 30)
(intern "*GRASP_CAP*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*GRASP_CAP* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*GRASP_CAP* 31)
(intern "*UNSCREW*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*UNSCREW* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*UNSCREW* 32)
(intern "*RELEASE_CAP*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*RELEASE_CAP* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*RELEASE_CAP* 33)
(intern "*RELEASE_BOTTLE*" (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(shadow '*RELEASE_BOTTLE* (find-package "BIMANUAL_DRINKING_V5_MSGS::TASKCOMMAND"))
(defconstant bimanual_drinking_v5_msgs::TaskCommand::*RELEASE_BOTTLE* 34)

(defun bimanual_drinking_v5_msgs::TaskCommand-to-symbol (const)
  (cond
        ((= const 0) 'bimanual_drinking_v5_msgs::TaskCommand::*STATUS*)
        ((= const 1) 'bimanual_drinking_v5_msgs::TaskCommand::*STOP*)
        ((= const 2) 'bimanual_drinking_v5_msgs::TaskCommand::*CLEAR_ESTOP*)
        ((= const 3) 'bimanual_drinking_v5_msgs::TaskCommand::*HOME_HANDS*)
        ((= const 10) 'bimanual_drinking_v5_msgs::TaskCommand::*RUN_BOTTLE_CAP_SEQUENCE*)
        ((= const 20) 'bimanual_drinking_v5_msgs::TaskCommand::*MOVE_LEFT_PREGRASP*)
        ((= const 21) 'bimanual_drinking_v5_msgs::TaskCommand::*GRASP_BOTTLE*)
        ((= const 30) 'bimanual_drinking_v5_msgs::TaskCommand::*MOVE_RIGHT_PREGRASP*)
        ((= const 31) 'bimanual_drinking_v5_msgs::TaskCommand::*GRASP_CAP*)
        ((= const 32) 'bimanual_drinking_v5_msgs::TaskCommand::*UNSCREW*)
        ((= const 33) 'bimanual_drinking_v5_msgs::TaskCommand::*RELEASE_CAP*)
        ((= const 34) 'bimanual_drinking_v5_msgs::TaskCommand::*RELEASE_BOTTLE*)
        (t nil)))

(defclass bimanual_drinking_v5_msgs::TaskCommand
  :super ros::object
  :slots (_header _command _speed_scale _plan_only ))

(defmethod bimanual_drinking_v5_msgs::TaskCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) 0)
    ((:speed_scale __speed_scale) 0.0)
    ((:plan_only __plan_only) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command (round __command))
   (setq _speed_scale (float __speed_scale))
   (setq _plan_only __plan_only)
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
  (:plan_only
   (&optional (__plan_only :null))
   (if (not (eq __plan_only :null)) (setq _plan_only __plan_only)) _plan_only)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _command
    1
    ;; float32 _speed_scale
    4
    ;; bool _plan_only
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
     ;; bool _plan_only
       (if _plan_only (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _plan_only
     (setq _plan_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get bimanual_drinking_v5_msgs::TaskCommand :md5sum-) "f9e74ce5044da031d687036e93905cdb")
(setf (get bimanual_drinking_v5_msgs::TaskCommand :datatype-) "bimanual_drinking_v5_msgs/TaskCommand")
(setf (get bimanual_drinking_v5_msgs::TaskCommand :definition-)
      "uint8 STATUS=0
uint8 STOP=1
uint8 CLEAR_ESTOP=2
uint8 HOME_HANDS=3
uint8 RUN_BOTTLE_CAP_SEQUENCE=10
uint8 MOVE_LEFT_PREGRASP=20
uint8 GRASP_BOTTLE=21
uint8 MOVE_RIGHT_PREGRASP=30
uint8 GRASP_CAP=31
uint8 UNSCREW=32
uint8 RELEASE_CAP=33
uint8 RELEASE_BOTTLE=34
std_msgs/Header header
uint8 command
float32 speed_scale
bool plan_only

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



(provide :bimanual_drinking_v5_msgs/TaskCommand "f9e74ce5044da031d687036e93905cdb")


