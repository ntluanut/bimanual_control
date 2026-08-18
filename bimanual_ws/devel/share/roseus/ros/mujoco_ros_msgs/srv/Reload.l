;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::Reload)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'Reload (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::RELOAD")
  (make-package "MUJOCO_ROS_MSGS::RELOAD"))
(unless (find-package "MUJOCO_ROS_MSGS::RELOADREQUEST")
  (make-package "MUJOCO_ROS_MSGS::RELOADREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::RELOADRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::RELOADRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::ReloadRequest
  :super ros::object
  :slots (_model _admin_hash ))

(defmethod mujoco_ros_msgs::ReloadRequest
  (:init
   (&key
    ((:model __model) "")
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _model (string __model))
   (setq _admin_hash (string __admin_hash))
   self)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; string _model
    4 (length _model)
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::ReloadResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod mujoco_ros_msgs::ReloadResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::Reload
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::Reload :md5sum-) "c5610c6a70905083203e69841b7db0de")
(setf (get mujoco_ros_msgs::Reload :datatype-) "mujoco_ros_msgs/Reload")
(setf (get mujoco_ros_msgs::Reload :request) mujoco_ros_msgs::ReloadRequest)
(setf (get mujoco_ros_msgs::Reload :response) mujoco_ros_msgs::ReloadResponse)

(defmethod mujoco_ros_msgs::ReloadRequest
  (:response () (instance mujoco_ros_msgs::ReloadResponse :init)))

(setf (get mujoco_ros_msgs::ReloadRequest :md5sum-) "c5610c6a70905083203e69841b7db0de")
(setf (get mujoco_ros_msgs::ReloadRequest :datatype-) "mujoco_ros_msgs/ReloadRequest")
(setf (get mujoco_ros_msgs::ReloadRequest :definition-)
      "string model
string admin_hash
---
bool success
string status_message

")

(setf (get mujoco_ros_msgs::ReloadResponse :md5sum-) "c5610c6a70905083203e69841b7db0de")
(setf (get mujoco_ros_msgs::ReloadResponse :datatype-) "mujoco_ros_msgs/ReloadResponse")
(setf (get mujoco_ros_msgs::ReloadResponse :definition-)
      "string model
string admin_hash
---
bool success
string status_message

")



(provide :mujoco_ros_msgs/Reload "c5610c6a70905083203e69841b7db0de")


