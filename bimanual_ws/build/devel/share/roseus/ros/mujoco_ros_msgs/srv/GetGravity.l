;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetGravity)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetGravity (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETGRAVITY")
  (make-package "MUJOCO_ROS_MSGS::GETGRAVITY"))
(unless (find-package "MUJOCO_ROS_MSGS::GETGRAVITYREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETGRAVITYREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETGRAVITYRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETGRAVITYRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetGravityRequest
  :super ros::object
  :slots (_admin_hash ))

(defmethod mujoco_ros_msgs::GetGravityRequest
  (:init
   (&key
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _admin_hash (string __admin_hash))
   self)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetGravityResponse
  :super ros::object
  :slots (_gravity _success _status_message ))

(defmethod mujoco_ros_msgs::GetGravityResponse
  (:init
   (&key
    ((:gravity __gravity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _gravity __gravity)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; float64[3] _gravity
    (* 8    3)
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _gravity
     (dotimes (i 3)
       (sys::poke (elt _gravity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _gravity
   (dotimes (i (length _gravity))
     (setf (elt _gravity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetGravity
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetGravity :md5sum-) "0eb542bfe5118c877d3ecf5ee3b1b29a")
(setf (get mujoco_ros_msgs::GetGravity :datatype-) "mujoco_ros_msgs/GetGravity")
(setf (get mujoco_ros_msgs::GetGravity :request) mujoco_ros_msgs::GetGravityRequest)
(setf (get mujoco_ros_msgs::GetGravity :response) mujoco_ros_msgs::GetGravityResponse)

(defmethod mujoco_ros_msgs::GetGravityRequest
  (:response () (instance mujoco_ros_msgs::GetGravityResponse :init)))

(setf (get mujoco_ros_msgs::GetGravityRequest :md5sum-) "0eb542bfe5118c877d3ecf5ee3b1b29a")
(setf (get mujoco_ros_msgs::GetGravityRequest :datatype-) "mujoco_ros_msgs/GetGravityRequest")
(setf (get mujoco_ros_msgs::GetGravityRequest :definition-)
      "string admin_hash
---
float64[3] gravity
bool success
string status_message

")

(setf (get mujoco_ros_msgs::GetGravityResponse :md5sum-) "0eb542bfe5118c877d3ecf5ee3b1b29a")
(setf (get mujoco_ros_msgs::GetGravityResponse :datatype-) "mujoco_ros_msgs/GetGravityResponse")
(setf (get mujoco_ros_msgs::GetGravityResponse :definition-)
      "string admin_hash
---
float64[3] gravity
bool success
string status_message

")



(provide :mujoco_ros_msgs/GetGravity "0eb542bfe5118c877d3ecf5ee3b1b29a")


