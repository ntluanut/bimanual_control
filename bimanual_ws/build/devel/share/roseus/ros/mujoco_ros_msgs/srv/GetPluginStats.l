;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetPluginStats)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetPluginStats (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETPLUGINSTATS")
  (make-package "MUJOCO_ROS_MSGS::GETPLUGINSTATS"))
(unless (find-package "MUJOCO_ROS_MSGS::GETPLUGINSTATSREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETPLUGINSTATSREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETPLUGINSTATSRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETPLUGINSTATSRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetPluginStatsRequest
  :super ros::object
  :slots ())

(defmethod mujoco_ros_msgs::GetPluginStatsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetPluginStatsResponse
  :super ros::object
  :slots (_stats ))

(defmethod mujoco_ros_msgs::GetPluginStatsResponse
  (:init
   (&key
    ((:stats __stats) ())
    )
   (send-super :init)
   (setq _stats __stats)
   self)
  (:stats
   (&rest __stats)
   (if (keywordp (car __stats))
       (send* _stats __stats)
     (progn
       (if __stats (setq _stats (car __stats)))
       _stats)))
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/PluginStats[] _stats
    (apply #'+ (send-all _stats :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/PluginStats[] _stats
     (write-long (length _stats) s)
     (dolist (elem _stats)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/PluginStats[] _stats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stats (let (r) (dotimes (i n) (push (instance mujoco_ros_msgs::PluginStats :init) r)) r))
     (dolist (elem- _stats)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetPluginStats
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetPluginStats :md5sum-) "7d3043450de18344352d2d333c449deb")
(setf (get mujoco_ros_msgs::GetPluginStats :datatype-) "mujoco_ros_msgs/GetPluginStats")
(setf (get mujoco_ros_msgs::GetPluginStats :request) mujoco_ros_msgs::GetPluginStatsRequest)
(setf (get mujoco_ros_msgs::GetPluginStats :response) mujoco_ros_msgs::GetPluginStatsResponse)

(defmethod mujoco_ros_msgs::GetPluginStatsRequest
  (:response () (instance mujoco_ros_msgs::GetPluginStatsResponse :init)))

(setf (get mujoco_ros_msgs::GetPluginStatsRequest :md5sum-) "7d3043450de18344352d2d333c449deb")
(setf (get mujoco_ros_msgs::GetPluginStatsRequest :datatype-) "mujoco_ros_msgs/GetPluginStatsRequest")
(setf (get mujoco_ros_msgs::GetPluginStatsRequest :definition-)
      "---
mujoco_ros_msgs/PluginStats[] stats


================================================================================
MSG: mujoco_ros_msgs/PluginStats
string plugin_type
float32 load_time
float32 reset_time
float32 ema_steptime_control
float32 ema_steptime_passive
float32 ema_steptime_render
float32 ema_steptime_last_stage
")

(setf (get mujoco_ros_msgs::GetPluginStatsResponse :md5sum-) "7d3043450de18344352d2d333c449deb")
(setf (get mujoco_ros_msgs::GetPluginStatsResponse :datatype-) "mujoco_ros_msgs/GetPluginStatsResponse")
(setf (get mujoco_ros_msgs::GetPluginStatsResponse :definition-)
      "---
mujoco_ros_msgs/PluginStats[] stats


================================================================================
MSG: mujoco_ros_msgs/PluginStats
string plugin_type
float32 load_time
float32 reset_time
float32 ema_steptime_control
float32 ema_steptime_passive
float32 ema_steptime_render
float32 ema_steptime_last_stage
")



(provide :mujoco_ros_msgs/GetPluginStats "7d3043450de18344352d2d333c449deb")


