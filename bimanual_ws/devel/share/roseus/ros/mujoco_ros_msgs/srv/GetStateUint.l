;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetStateUint)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetStateUint (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETSTATEUINT")
  (make-package "MUJOCO_ROS_MSGS::GETSTATEUINT"))
(unless (find-package "MUJOCO_ROS_MSGS::GETSTATEUINTREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETSTATEUINTREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETSTATEUINTRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETSTATEUINTRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetStateUintRequest
  :super ros::object
  :slots ())

(defmethod mujoco_ros_msgs::GetStateUintRequest
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

(defclass mujoco_ros_msgs::GetStateUintResponse
  :super ros::object
  :slots (_state ))

(defmethod mujoco_ros_msgs::GetStateUintResponse
  (:init
   (&key
    ((:state __state) (instance mujoco_ros_msgs::StateUint :init))
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
    ;; mujoco_ros_msgs/StateUint _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/StateUint _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/StateUint _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetStateUint
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetStateUint :md5sum-) "e15f8271e1c8147c518f22f4076ebd9c")
(setf (get mujoco_ros_msgs::GetStateUint :datatype-) "mujoco_ros_msgs/GetStateUint")
(setf (get mujoco_ros_msgs::GetStateUint :request) mujoco_ros_msgs::GetStateUintRequest)
(setf (get mujoco_ros_msgs::GetStateUint :response) mujoco_ros_msgs::GetStateUintResponse)

(defmethod mujoco_ros_msgs::GetStateUintRequest
  (:response () (instance mujoco_ros_msgs::GetStateUintResponse :init)))

(setf (get mujoco_ros_msgs::GetStateUintRequest :md5sum-) "e15f8271e1c8147c518f22f4076ebd9c")
(setf (get mujoco_ros_msgs::GetStateUintRequest :datatype-) "mujoco_ros_msgs/GetStateUintRequest")
(setf (get mujoco_ros_msgs::GetStateUintRequest :definition-)
      "---
mujoco_ros_msgs/StateUint state


================================================================================
MSG: mujoco_ros_msgs/StateUint
uint8 value
string description
")

(setf (get mujoco_ros_msgs::GetStateUintResponse :md5sum-) "e15f8271e1c8147c518f22f4076ebd9c")
(setf (get mujoco_ros_msgs::GetStateUintResponse :datatype-) "mujoco_ros_msgs/GetStateUintResponse")
(setf (get mujoco_ros_msgs::GetStateUintResponse :definition-)
      "---
mujoco_ros_msgs/StateUint state


================================================================================
MSG: mujoco_ros_msgs/StateUint
uint8 value
string description
")



(provide :mujoco_ros_msgs/GetStateUint "e15f8271e1c8147c518f22f4076ebd9c")


