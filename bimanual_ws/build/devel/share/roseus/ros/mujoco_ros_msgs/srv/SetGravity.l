;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SetGravity)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SetGravity (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SETGRAVITY")
  (make-package "MUJOCO_ROS_MSGS::SETGRAVITY"))
(unless (find-package "MUJOCO_ROS_MSGS::SETGRAVITYREQUEST")
  (make-package "MUJOCO_ROS_MSGS::SETGRAVITYREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::SETGRAVITYRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::SETGRAVITYRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::SetGravityRequest
  :super ros::object
  :slots (_admin_hash _gravity ))

(defmethod mujoco_ros_msgs::SetGravityRequest
  (:init
   (&key
    ((:admin_hash __admin_hash) "")
    ((:gravity __gravity) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _admin_hash (string __admin_hash))
   (setq _gravity __gravity)
   self)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:serialization-length
   ()
   (+
    ;; string _admin_hash
    4 (length _admin_hash)
    ;; float64[3] _gravity
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;; float64[3] _gravity
     (dotimes (i 3)
       (sys::poke (elt _gravity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[3] _gravity
   (dotimes (i (length _gravity))
     (setf (elt _gravity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetGravityResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod mujoco_ros_msgs::SetGravityResponse
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

(defclass mujoco_ros_msgs::SetGravity
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::SetGravity :md5sum-) "9b6a9279bd7e42eade7367a6875c2398")
(setf (get mujoco_ros_msgs::SetGravity :datatype-) "mujoco_ros_msgs/SetGravity")
(setf (get mujoco_ros_msgs::SetGravity :request) mujoco_ros_msgs::SetGravityRequest)
(setf (get mujoco_ros_msgs::SetGravity :response) mujoco_ros_msgs::SetGravityResponse)

(defmethod mujoco_ros_msgs::SetGravityRequest
  (:response () (instance mujoco_ros_msgs::SetGravityResponse :init)))

(setf (get mujoco_ros_msgs::SetGravityRequest :md5sum-) "9b6a9279bd7e42eade7367a6875c2398")
(setf (get mujoco_ros_msgs::SetGravityRequest :datatype-) "mujoco_ros_msgs/SetGravityRequest")
(setf (get mujoco_ros_msgs::SetGravityRequest :definition-)
      "string admin_hash
float64[3] gravity
---
bool success
string status_message

")

(setf (get mujoco_ros_msgs::SetGravityResponse :md5sum-) "9b6a9279bd7e42eade7367a6875c2398")
(setf (get mujoco_ros_msgs::SetGravityResponse :datatype-) "mujoco_ros_msgs/SetGravityResponse")
(setf (get mujoco_ros_msgs::SetGravityResponse :definition-)
      "string admin_hash
float64[3] gravity
---
bool success
string status_message

")



(provide :mujoco_ros_msgs/SetGravity "9b6a9279bd7e42eade7367a6875c2398")


