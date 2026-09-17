;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetSimInfo)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetSimInfo (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETSIMINFO")
  (make-package "MUJOCO_ROS_MSGS::GETSIMINFO"))
(unless (find-package "MUJOCO_ROS_MSGS::GETSIMINFOREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETSIMINFOREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETSIMINFORESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETSIMINFORESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetSimInfoRequest
  :super ros::object
  :slots ())

(defmethod mujoco_ros_msgs::GetSimInfoRequest
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

(defclass mujoco_ros_msgs::GetSimInfoResponse
  :super ros::object
  :slots (_state ))

(defmethod mujoco_ros_msgs::GetSimInfoResponse
  (:init
   (&key
    ((:state __state) (instance mujoco_ros_msgs::SimInfo :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/SimInfo _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/SimInfo _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/SimInfo _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetSimInfo
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetSimInfo :md5sum-) "9d1bcf43ea2e10aaf5f5745e953cd88d")
(setf (get mujoco_ros_msgs::GetSimInfo :datatype-) "mujoco_ros_msgs/GetSimInfo")
(setf (get mujoco_ros_msgs::GetSimInfo :request) mujoco_ros_msgs::GetSimInfoRequest)
(setf (get mujoco_ros_msgs::GetSimInfo :response) mujoco_ros_msgs::GetSimInfoResponse)

(defmethod mujoco_ros_msgs::GetSimInfoRequest
  (:response () (instance mujoco_ros_msgs::GetSimInfoResponse :init)))

(setf (get mujoco_ros_msgs::GetSimInfoRequest :md5sum-) "9d1bcf43ea2e10aaf5f5745e953cd88d")
(setf (get mujoco_ros_msgs::GetSimInfoRequest :datatype-) "mujoco_ros_msgs/GetSimInfoRequest")
(setf (get mujoco_ros_msgs::GetSimInfoRequest :definition-)
      "---
mujoco_ros_msgs/SimInfo state


================================================================================
MSG: mujoco_ros_msgs/SimInfo
string model_path
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

(setf (get mujoco_ros_msgs::GetSimInfoResponse :md5sum-) "9d1bcf43ea2e10aaf5f5745e953cd88d")
(setf (get mujoco_ros_msgs::GetSimInfoResponse :datatype-) "mujoco_ros_msgs/GetSimInfoResponse")
(setf (get mujoco_ros_msgs::GetSimInfoResponse :definition-)
      "---
mujoco_ros_msgs/SimInfo state


================================================================================
MSG: mujoco_ros_msgs/SimInfo
string model_path
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



(provide :mujoco_ros_msgs/GetSimInfo "9d1bcf43ea2e10aaf5f5745e953cd88d")


