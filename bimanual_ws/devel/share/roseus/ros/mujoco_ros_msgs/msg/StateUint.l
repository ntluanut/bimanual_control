;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::StateUint)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'StateUint (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::STATEUINT")
  (make-package "MUJOCO_ROS_MSGS::STATEUINT"))

(in-package "ROS")
;;//! \htmlinclude StateUint.msg.html


(defclass mujoco_ros_msgs::StateUint
  :super ros::object
  :slots (_value _description ))

(defmethod mujoco_ros_msgs::StateUint
  (:init
   (&key
    ((:value __value) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _description (string __description))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::StateUint :md5sum-) "b22c55f3d359fe962b409850277d0be8")
(setf (get mujoco_ros_msgs::StateUint :datatype-) "mujoco_ros_msgs/StateUint")
(setf (get mujoco_ros_msgs::StateUint :definition-)
      "uint8 value
string description

")



(provide :mujoco_ros_msgs/StateUint "b22c55f3d359fe962b409850277d0be8")


