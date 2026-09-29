;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::EqualityConstraintType)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'EqualityConstraintType (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE")
  (make-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))

(in-package "ROS")
;;//! \htmlinclude EqualityConstraintType.msg.html


(intern "*CONNECT*" (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(shadow '*CONNECT* (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(defconstant mujoco_ros_msgs::EqualityConstraintType::*CONNECT* 0)
(intern "*WELD*" (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(shadow '*WELD* (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(defconstant mujoco_ros_msgs::EqualityConstraintType::*WELD* 1)
(intern "*JOINT*" (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(shadow '*JOINT* (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(defconstant mujoco_ros_msgs::EqualityConstraintType::*JOINT* 2)
(intern "*TENDON*" (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(shadow '*TENDON* (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTTYPE"))
(defconstant mujoco_ros_msgs::EqualityConstraintType::*TENDON* 3)

(defun mujoco_ros_msgs::EqualityConstraintType-to-symbol (const)
  (cond
        ((= const 0) 'mujoco_ros_msgs::EqualityConstraintType::*CONNECT*)
        ((= const 1) 'mujoco_ros_msgs::EqualityConstraintType::*WELD*)
        ((= const 2) 'mujoco_ros_msgs::EqualityConstraintType::*JOINT*)
        ((= const 3) 'mujoco_ros_msgs::EqualityConstraintType::*TENDON*)
        (t nil)))

(defclass mujoco_ros_msgs::EqualityConstraintType
  :super ros::object
  :slots (_value ))

(defmethod mujoco_ros_msgs::EqualityConstraintType
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::EqualityConstraintType :md5sum-) "e70314e6b4684677c8a1025a8bc5ef88")
(setf (get mujoco_ros_msgs::EqualityConstraintType :datatype-) "mujoco_ros_msgs/EqualityConstraintType")
(setf (get mujoco_ros_msgs::EqualityConstraintType :definition-)
      "uint16 value
uint16 CONNECT=0
uint16 WELD=1
uint16 JOINT=2
uint16 TENDON=3

")



(provide :mujoco_ros_msgs/EqualityConstraintType "e70314e6b4684677c8a1025a8bc5ef88")


