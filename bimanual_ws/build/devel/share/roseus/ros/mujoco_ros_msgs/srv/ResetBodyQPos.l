;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::ResetBodyQPos)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'ResetBodyQPos (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::RESETBODYQPOS")
  (make-package "MUJOCO_ROS_MSGS::RESETBODYQPOS"))
(unless (find-package "MUJOCO_ROS_MSGS::RESETBODYQPOSREQUEST")
  (make-package "MUJOCO_ROS_MSGS::RESETBODYQPOSREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::RESETBODYQPOSRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::RESETBODYQPOSRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::ResetBodyQPosRequest
  :super ros::object
  :slots (_name _admin_hash ))

(defmethod mujoco_ros_msgs::ResetBodyQPosRequest
  (:init
   (&key
    ((:name __name) "")
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _admin_hash (string __admin_hash))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::ResetBodyQPosResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod mujoco_ros_msgs::ResetBodyQPosResponse
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

(defclass mujoco_ros_msgs::ResetBodyQPos
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::ResetBodyQPos :md5sum-) "a5102c837d3e894714b27aecbae54380")
(setf (get mujoco_ros_msgs::ResetBodyQPos :datatype-) "mujoco_ros_msgs/ResetBodyQPos")
(setf (get mujoco_ros_msgs::ResetBodyQPos :request) mujoco_ros_msgs::ResetBodyQPosRequest)
(setf (get mujoco_ros_msgs::ResetBodyQPos :response) mujoco_ros_msgs::ResetBodyQPosResponse)

(defmethod mujoco_ros_msgs::ResetBodyQPosRequest
  (:response () (instance mujoco_ros_msgs::ResetBodyQPosResponse :init)))

(setf (get mujoco_ros_msgs::ResetBodyQPosRequest :md5sum-) "a5102c837d3e894714b27aecbae54380")
(setf (get mujoco_ros_msgs::ResetBodyQPosRequest :datatype-) "mujoco_ros_msgs/ResetBodyQPosRequest")
(setf (get mujoco_ros_msgs::ResetBodyQPosRequest :definition-)
      "string name
string admin_hash
---
bool success
string status_message

")

(setf (get mujoco_ros_msgs::ResetBodyQPosResponse :md5sum-) "a5102c837d3e894714b27aecbae54380")
(setf (get mujoco_ros_msgs::ResetBodyQPosResponse :datatype-) "mujoco_ros_msgs/ResetBodyQPosResponse")
(setf (get mujoco_ros_msgs::ResetBodyQPosResponse :definition-)
      "string name
string admin_hash
---
bool success
string status_message

")



(provide :mujoco_ros_msgs/ResetBodyQPos "a5102c837d3e894714b27aecbae54380")


