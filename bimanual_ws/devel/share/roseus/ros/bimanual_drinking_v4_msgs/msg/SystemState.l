;; Auto-generated. Do not edit!


(when (boundp 'bimanual_drinking_v4_msgs::SystemState)
  (if (not (find-package "BIMANUAL_DRINKING_V4_MSGS"))
    (make-package "BIMANUAL_DRINKING_V4_MSGS"))
  (shadow 'SystemState (find-package "BIMANUAL_DRINKING_V4_MSGS")))
(unless (find-package "BIMANUAL_DRINKING_V4_MSGS::SYSTEMSTATE")
  (make-package "BIMANUAL_DRINKING_V4_MSGS::SYSTEMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SystemState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bimanual_drinking_v4_msgs::SystemState
  :super ros::object
  :slots (_header _phase _busy _estop _left_arm_connected _right_arm_connected _left_hand_alive _right_hand_alive _bottle_frame_valid _cap_target_valid _last_error ))

(defmethod bimanual_drinking_v4_msgs::SystemState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:phase __phase) "")
    ((:busy __busy) nil)
    ((:estop __estop) nil)
    ((:left_arm_connected __left_arm_connected) nil)
    ((:right_arm_connected __right_arm_connected) nil)
    ((:left_hand_alive __left_hand_alive) nil)
    ((:right_hand_alive __right_hand_alive) nil)
    ((:bottle_frame_valid __bottle_frame_valid) nil)
    ((:cap_target_valid __cap_target_valid) nil)
    ((:last_error __last_error) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _phase (string __phase))
   (setq _busy __busy)
   (setq _estop __estop)
   (setq _left_arm_connected __left_arm_connected)
   (setq _right_arm_connected __right_arm_connected)
   (setq _left_hand_alive __left_hand_alive)
   (setq _right_hand_alive __right_hand_alive)
   (setq _bottle_frame_valid __bottle_frame_valid)
   (setq _cap_target_valid __cap_target_valid)
   (setq _last_error (string __last_error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:busy
   (&optional (__busy :null))
   (if (not (eq __busy :null)) (setq _busy __busy)) _busy)
  (:estop
   (&optional (__estop :null))
   (if (not (eq __estop :null)) (setq _estop __estop)) _estop)
  (:left_arm_connected
   (&optional (__left_arm_connected :null))
   (if (not (eq __left_arm_connected :null)) (setq _left_arm_connected __left_arm_connected)) _left_arm_connected)
  (:right_arm_connected
   (&optional (__right_arm_connected :null))
   (if (not (eq __right_arm_connected :null)) (setq _right_arm_connected __right_arm_connected)) _right_arm_connected)
  (:left_hand_alive
   (&optional (__left_hand_alive :null))
   (if (not (eq __left_hand_alive :null)) (setq _left_hand_alive __left_hand_alive)) _left_hand_alive)
  (:right_hand_alive
   (&optional (__right_hand_alive :null))
   (if (not (eq __right_hand_alive :null)) (setq _right_hand_alive __right_hand_alive)) _right_hand_alive)
  (:bottle_frame_valid
   (&optional (__bottle_frame_valid :null))
   (if (not (eq __bottle_frame_valid :null)) (setq _bottle_frame_valid __bottle_frame_valid)) _bottle_frame_valid)
  (:cap_target_valid
   (&optional (__cap_target_valid :null))
   (if (not (eq __cap_target_valid :null)) (setq _cap_target_valid __cap_target_valid)) _cap_target_valid)
  (:last_error
   (&optional __last_error)
   (if __last_error (setq _last_error __last_error)) _last_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _phase
    4 (length _phase)
    ;; bool _busy
    1
    ;; bool _estop
    1
    ;; bool _left_arm_connected
    1
    ;; bool _right_arm_connected
    1
    ;; bool _left_hand_alive
    1
    ;; bool _right_hand_alive
    1
    ;; bool _bottle_frame_valid
    1
    ;; bool _cap_target_valid
    1
    ;; string _last_error
    4 (length _last_error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _phase
       (write-long (length _phase) s) (princ _phase s)
     ;; bool _busy
       (if _busy (write-byte -1 s) (write-byte 0 s))
     ;; bool _estop
       (if _estop (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_arm_connected
       (if _left_arm_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_arm_connected
       (if _right_arm_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_hand_alive
       (if _left_hand_alive (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_hand_alive
       (if _right_hand_alive (write-byte -1 s) (write-byte 0 s))
     ;; bool _bottle_frame_valid
       (if _bottle_frame_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _cap_target_valid
       (if _cap_target_valid (write-byte -1 s) (write-byte 0 s))
     ;; string _last_error
       (write-long (length _last_error) s) (princ _last_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _phase
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _phase (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _busy
     (setq _busy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _estop
     (setq _estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_arm_connected
     (setq _left_arm_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_arm_connected
     (setq _right_arm_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_hand_alive
     (setq _left_hand_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_hand_alive
     (setq _right_hand_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bottle_frame_valid
     (setq _bottle_frame_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cap_target_valid
     (setq _cap_target_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _last_error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bimanual_drinking_v4_msgs::SystemState :md5sum-) "6335e50c6ea7d69d826d644fffce39d5")
(setf (get bimanual_drinking_v4_msgs::SystemState :datatype-) "bimanual_drinking_v4_msgs/SystemState")
(setf (get bimanual_drinking_v4_msgs::SystemState :definition-)
      "std_msgs/Header header
string phase
bool busy
bool estop
bool left_arm_connected
bool right_arm_connected
bool left_hand_alive
bool right_hand_alive
bool bottle_frame_valid
bool cap_target_valid
string last_error

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



(provide :bimanual_drinking_v4_msgs/SystemState "6335e50c6ea7d69d826d644fffce39d5")


