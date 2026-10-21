;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SimInfo)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SimInfo (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SIMINFO")
  (make-package "MUJOCO_ROS_MSGS::SIMINFO"))

(in-package "ROS")
;;//! \htmlinclude SimInfo.msg.html


(defclass mujoco_ros_msgs::SimInfo
  :super ros::object
  :slots (_model_path _model_valid _load_count _loading_state _paused _pending_sim_steps _rt_measured _rt_setting ))

(defmethod mujoco_ros_msgs::SimInfo
  (:init
   (&key
    ((:model_path __model_path) "")
    ((:model_valid __model_valid) nil)
    ((:load_count __load_count) 0)
    ((:loading_state __loading_state) (instance mujoco_ros_msgs::StateUint :init))
    ((:paused __paused) nil)
    ((:pending_sim_steps __pending_sim_steps) 0)
    ((:rt_measured __rt_measured) 0.0)
    ((:rt_setting __rt_setting) 0.0)
    )
   (send-super :init)
   (setq _model_path (string __model_path))
   (setq _model_valid __model_valid)
   (setq _load_count (round __load_count))
   (setq _loading_state __loading_state)
   (setq _paused __paused)
   (setq _pending_sim_steps (round __pending_sim_steps))
   (setq _rt_measured (float __rt_measured))
   (setq _rt_setting (float __rt_setting))
   self)
  (:model_path
   (&optional __model_path)
   (if __model_path (setq _model_path __model_path)) _model_path)
  (:model_valid
   (&optional (__model_valid :null))
   (if (not (eq __model_valid :null)) (setq _model_valid __model_valid)) _model_valid)
  (:load_count
   (&optional __load_count)
   (if __load_count (setq _load_count __load_count)) _load_count)
  (:loading_state
   (&rest __loading_state)
   (if (keywordp (car __loading_state))
       (send* _loading_state __loading_state)
     (progn
       (if __loading_state (setq _loading_state (car __loading_state)))
       _loading_state)))
  (:paused
   (&optional (__paused :null))
   (if (not (eq __paused :null)) (setq _paused __paused)) _paused)
  (:pending_sim_steps
   (&optional __pending_sim_steps)
   (if __pending_sim_steps (setq _pending_sim_steps __pending_sim_steps)) _pending_sim_steps)
  (:rt_measured
   (&optional __rt_measured)
   (if __rt_measured (setq _rt_measured __rt_measured)) _rt_measured)
  (:rt_setting
   (&optional __rt_setting)
   (if __rt_setting (setq _rt_setting __rt_setting)) _rt_setting)
  (:serialization-length
   ()
   (+
    ;; string _model_path
    4 (length _model_path)
    ;; bool _model_valid
    1
    ;; uint16 _load_count
    2
    ;; mujoco_ros_msgs/StateUint _loading_state
    (send _loading_state :serialization-length)
    ;; bool _paused
    1
    ;; uint16 _pending_sim_steps
    2
    ;; float32 _rt_measured
    4
    ;; float32 _rt_setting
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_path
       (write-long (length _model_path) s) (princ _model_path s)
     ;; bool _model_valid
       (if _model_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _load_count
       (write-word _load_count s)
     ;; mujoco_ros_msgs/StateUint _loading_state
       (send _loading_state :serialize s)
     ;; bool _paused
       (if _paused (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _pending_sim_steps
       (write-word _pending_sim_steps s)
     ;; float32 _rt_measured
       (sys::poke _rt_measured (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rt_setting
       (sys::poke _rt_setting (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _model_valid
     (setq _model_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _load_count
     (setq _load_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; mujoco_ros_msgs/StateUint _loading_state
     (send _loading_state :deserialize buf ptr-) (incf ptr- (send _loading_state :serialization-length))
   ;; bool _paused
     (setq _paused (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _pending_sim_steps
     (setq _pending_sim_steps (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _rt_measured
     (setq _rt_measured (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rt_setting
     (setq _rt_setting (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::SimInfo :md5sum-) "50fb0bcacffb362708f3fc623e7e9a63")
(setf (get mujoco_ros_msgs::SimInfo :datatype-) "mujoco_ros_msgs/SimInfo")
(setf (get mujoco_ros_msgs::SimInfo :definition-)
      "string model_path
bool model_valid
uint16 load_count # counter of (re)loads
mujoco_ros_msgs/StateUint loading_state
bool paused
uint16 pending_sim_steps
float32 rt_measured # measured real-time factor
float32 rt_setting # desired real-time factor

================================================================================
MSG: mujoco_ros_msgs/StateUint
uint8 value
string description

")



(provide :mujoco_ros_msgs/SimInfo "50fb0bcacffb362708f3fc623e7e9a63")


