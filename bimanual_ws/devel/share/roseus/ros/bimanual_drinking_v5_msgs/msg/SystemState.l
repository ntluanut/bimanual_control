;; Auto-generated. Do not edit!


(when (boundp 'bimanual_drinking_v5_msgs::SystemState)
  (if (not (find-package "BIMANUAL_DRINKING_V5_MSGS"))
    (make-package "BIMANUAL_DRINKING_V5_MSGS"))
  (shadow 'SystemState (find-package "BIMANUAL_DRINKING_V5_MSGS")))
(unless (find-package "BIMANUAL_DRINKING_V5_MSGS::SYSTEMSTATE")
  (make-package "BIMANUAL_DRINKING_V5_MSGS::SYSTEMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SystemState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bimanual_drinking_v5_msgs::SystemState
  :super ros::object
  :slots (_header _phase _busy _estop _moveit_ready _bottle_attached _left_hand_alive _right_hand_alive _left_hand_settled _right_hand_settled _last_error ))

(defmethod bimanual_drinking_v5_msgs::SystemState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:phase __phase) "")
    ((:busy __busy) nil)
    ((:estop __estop) nil)
    ((:moveit_ready __moveit_ready) nil)
    ((:bottle_attached __bottle_attached) nil)
    ((:left_hand_alive __left_hand_alive) nil)
    ((:right_hand_alive __right_hand_alive) nil)
    ((:left_hand_settled __left_hand_settled) nil)
    ((:right_hand_settled __right_hand_settled) nil)
    ((:last_error __last_error) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _phase (string __phase))
   (setq _busy __busy)
   (setq _estop __estop)
   (setq _moveit_ready __moveit_ready)
   (setq _bottle_attached __bottle_attached)
   (setq _left_hand_alive __left_hand_alive)
   (setq _right_hand_alive __right_hand_alive)
   (setq _left_hand_settled __left_hand_settled)
   (setq _right_hand_settled __right_hand_settled)
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
  (:moveit_ready
   (&optional (__moveit_ready :null))
   (if (not (eq __moveit_ready :null)) (setq _moveit_ready __moveit_ready)) _moveit_ready)
  (:bottle_attached
   (&optional (__bottle_attached :null))
   (if (not (eq __bottle_attached :null)) (setq _bottle_attached __bottle_attached)) _bottle_attached)
  (:left_hand_alive
   (&optional (__left_hand_alive :null))
   (if (not (eq __left_hand_alive :null)) (setq _left_hand_alive __left_hand_alive)) _left_hand_alive)
  (:right_hand_alive
   (&optional (__right_hand_alive :null))
   (if (not (eq __right_hand_alive :null)) (setq _right_hand_alive __right_hand_alive)) _right_hand_alive)
  (:left_hand_settled
   (&optional (__left_hand_settled :null))
   (if (not (eq __left_hand_settled :null)) (setq _left_hand_settled __left_hand_settled)) _left_hand_settled)
  (:right_hand_settled
   (&optional (__right_hand_settled :null))
   (if (not (eq __right_hand_settled :null)) (setq _right_hand_settled __right_hand_settled)) _right_hand_settled)
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
    ;; bool _moveit_ready
    1
    ;; bool _bottle_attached
    1
    ;; bool _left_hand_alive
    1
    ;; bool _right_hand_alive
    1
    ;; bool _left_hand_settled
    1
    ;; bool _right_hand_settled
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
     ;; bool _moveit_ready
       (if _moveit_ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _bottle_attached
       (if _bottle_attached (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_hand_alive
       (if _left_hand_alive (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_hand_alive
       (if _right_hand_alive (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_hand_settled
       (if _left_hand_settled (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_hand_settled
       (if _right_hand_settled (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _moveit_ready
     (setq _moveit_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bottle_attached
     (setq _bottle_attached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_hand_alive
     (setq _left_hand_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_hand_alive
     (setq _right_hand_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_hand_settled
     (setq _left_hand_settled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_hand_settled
     (setq _right_hand_settled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _last_error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get bimanual_drinking_v5_msgs::SystemState :md5sum-) "7092e774a948ee80cb8059d5afed3515")
(setf (get bimanual_drinking_v5_msgs::SystemState :datatype-) "bimanual_drinking_v5_msgs/SystemState")
(setf (get bimanual_drinking_v5_msgs::SystemState :definition-)
      "std_msgs/Header header
string phase
bool busy
bool estop
bool moveit_ready
bool bottle_attached
bool left_hand_alive
bool right_hand_alive
bool left_hand_settled
bool right_hand_settled
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



(provide :bimanual_drinking_v5_msgs/SystemState "7092e774a948ee80cb8059d5afed3515")


