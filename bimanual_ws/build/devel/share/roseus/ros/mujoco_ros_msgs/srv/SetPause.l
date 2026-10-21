;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SetPause)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SetPause (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SETPAUSE")
  (make-package "MUJOCO_ROS_MSGS::SETPAUSE"))
(unless (find-package "MUJOCO_ROS_MSGS::SETPAUSEREQUEST")
  (make-package "MUJOCO_ROS_MSGS::SETPAUSEREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::SETPAUSERESPONSE")
  (make-package "MUJOCO_ROS_MSGS::SETPAUSERESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::SetPauseRequest
  :super ros::object
  :slots (_paused _admin_hash ))

(defmethod mujoco_ros_msgs::SetPauseRequest
  (:init
   (&key
    ((:paused __paused) nil)
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _paused __paused)
   (setq _admin_hash (string __admin_hash))
   self)
  (:paused
   (&optional (__paused :null))
   (if (not (eq __paused :null)) (setq _paused __paused)) _paused)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; bool _paused
    1
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _paused
       (if _paused (write-byte -1 s) (write-byte 0 s))
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _paused
     (setq _paused (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetPauseResponse
  :super ros::object
  :slots (_success ))

(defmethod mujoco_ros_msgs::SetPauseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetPause
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::SetPause :md5sum-) "b3b6340c1a873657e7d239a0abbde573")
(setf (get mujoco_ros_msgs::SetPause :datatype-) "mujoco_ros_msgs/SetPause")
(setf (get mujoco_ros_msgs::SetPause :request) mujoco_ros_msgs::SetPauseRequest)
(setf (get mujoco_ros_msgs::SetPause :response) mujoco_ros_msgs::SetPauseResponse)

(defmethod mujoco_ros_msgs::SetPauseRequest
  (:response () (instance mujoco_ros_msgs::SetPauseResponse :init)))

(setf (get mujoco_ros_msgs::SetPauseRequest :md5sum-) "b3b6340c1a873657e7d239a0abbde573")
(setf (get mujoco_ros_msgs::SetPauseRequest :datatype-) "mujoco_ros_msgs/SetPauseRequest")
(setf (get mujoco_ros_msgs::SetPauseRequest :definition-)
      "bool paused
string admin_hash
---
bool success

")

(setf (get mujoco_ros_msgs::SetPauseResponse :md5sum-) "b3b6340c1a873657e7d239a0abbde573")
(setf (get mujoco_ros_msgs::SetPauseResponse :datatype-) "mujoco_ros_msgs/SetPauseResponse")
(setf (get mujoco_ros_msgs::SetPauseResponse :definition-)
      "bool paused
string admin_hash
---
bool success

")



(provide :mujoco_ros_msgs/SetPause "b3b6340c1a873657e7d239a0abbde573")


