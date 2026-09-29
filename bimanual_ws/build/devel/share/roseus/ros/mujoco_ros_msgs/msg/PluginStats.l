;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::PluginStats)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'PluginStats (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::PLUGINSTATS")
  (make-package "MUJOCO_ROS_MSGS::PLUGINSTATS"))

(in-package "ROS")
;;//! \htmlinclude PluginStats.msg.html


(defclass mujoco_ros_msgs::PluginStats
  :super ros::object
  :slots (_plugin_type _load_time _reset_time _ema_steptime_control _ema_steptime_passive _ema_steptime_render _ema_steptime_last_stage ))

(defmethod mujoco_ros_msgs::PluginStats
  (:init
   (&key
    ((:plugin_type __plugin_type) "")
    ((:load_time __load_time) 0.0)
    ((:reset_time __reset_time) 0.0)
    ((:ema_steptime_control __ema_steptime_control) 0.0)
    ((:ema_steptime_passive __ema_steptime_passive) 0.0)
    ((:ema_steptime_render __ema_steptime_render) 0.0)
    ((:ema_steptime_last_stage __ema_steptime_last_stage) 0.0)
    )
   (send-super :init)
   (setq _plugin_type (string __plugin_type))
   (setq _load_time (float __load_time))
   (setq _reset_time (float __reset_time))
   (setq _ema_steptime_control (float __ema_steptime_control))
   (setq _ema_steptime_passive (float __ema_steptime_passive))
   (setq _ema_steptime_render (float __ema_steptime_render))
   (setq _ema_steptime_last_stage (float __ema_steptime_last_stage))
   self)
  (:plugin_type
   (&optional __plugin_type)
   (if __plugin_type (setq _plugin_type __plugin_type)) _plugin_type)
  (:load_time
   (&optional __load_time)
   (if __load_time (setq _load_time __load_time)) _load_time)
  (:reset_time
   (&optional __reset_time)
   (if __reset_time (setq _reset_time __reset_time)) _reset_time)
  (:ema_steptime_control
   (&optional __ema_steptime_control)
   (if __ema_steptime_control (setq _ema_steptime_control __ema_steptime_control)) _ema_steptime_control)
  (:ema_steptime_passive
   (&optional __ema_steptime_passive)
   (if __ema_steptime_passive (setq _ema_steptime_passive __ema_steptime_passive)) _ema_steptime_passive)
  (:ema_steptime_render
   (&optional __ema_steptime_render)
   (if __ema_steptime_render (setq _ema_steptime_render __ema_steptime_render)) _ema_steptime_render)
  (:ema_steptime_last_stage
   (&optional __ema_steptime_last_stage)
   (if __ema_steptime_last_stage (setq _ema_steptime_last_stage __ema_steptime_last_stage)) _ema_steptime_last_stage)
  (:serialization-length
   ()
   (+
    ;; string _plugin_type
    4 (length _plugin_type)
    ;; float32 _load_time
    4
    ;; float32 _reset_time
    4
    ;; float32 _ema_steptime_control
    4
    ;; float32 _ema_steptime_passive
    4
    ;; float32 _ema_steptime_render
    4
    ;; float32 _ema_steptime_last_stage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _plugin_type
       (write-long (length _plugin_type) s) (princ _plugin_type s)
     ;; float32 _load_time
       (sys::poke _load_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reset_time
       (sys::poke _reset_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ema_steptime_control
       (sys::poke _ema_steptime_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ema_steptime_passive
       (sys::poke _ema_steptime_passive (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ema_steptime_render
       (sys::poke _ema_steptime_render (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ema_steptime_last_stage
       (sys::poke _ema_steptime_last_stage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _plugin_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plugin_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _load_time
     (setq _load_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reset_time
     (setq _reset_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ema_steptime_control
     (setq _ema_steptime_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ema_steptime_passive
     (setq _ema_steptime_passive (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ema_steptime_render
     (setq _ema_steptime_render (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ema_steptime_last_stage
     (setq _ema_steptime_last_stage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::PluginStats :md5sum-) "8952a8d56593bd9d53888ef079c075b0")
(setf (get mujoco_ros_msgs::PluginStats :datatype-) "mujoco_ros_msgs/PluginStats")
(setf (get mujoco_ros_msgs::PluginStats :definition-)
      "string plugin_type
float32 load_time
float32 reset_time
float32 ema_steptime_control
float32 ema_steptime_passive
float32 ema_steptime_render
float32 ema_steptime_last_stage

")



(provide :mujoco_ros_msgs/PluginStats "8952a8d56593bd9d53888ef079c075b0")


