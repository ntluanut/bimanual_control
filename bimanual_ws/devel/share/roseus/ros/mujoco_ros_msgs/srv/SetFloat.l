;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SetFloat)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SetFloat (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SETFLOAT")
  (make-package "MUJOCO_ROS_MSGS::SETFLOAT"))
(unless (find-package "MUJOCO_ROS_MSGS::SETFLOATREQUEST")
  (make-package "MUJOCO_ROS_MSGS::SETFLOATREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::SETFLOATRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::SETFLOATRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::SetFloatRequest
  :super ros::object
  :slots (_value _admin_hash ))

(defmethod mujoco_ros_msgs::SetFloatRequest
  (:init
   (&key
    ((:value __value) 0.0)
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _admin_hash (string __admin_hash))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetFloatResponse
  :super ros::object
  :slots (_success ))

(defmethod mujoco_ros_msgs::SetFloatResponse
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

(defclass mujoco_ros_msgs::SetFloat
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::SetFloat :md5sum-) "5fea2e41f7b6b7661e7fdb2169a08ea4")
(setf (get mujoco_ros_msgs::SetFloat :datatype-) "mujoco_ros_msgs/SetFloat")
(setf (get mujoco_ros_msgs::SetFloat :request) mujoco_ros_msgs::SetFloatRequest)
(setf (get mujoco_ros_msgs::SetFloat :response) mujoco_ros_msgs::SetFloatResponse)

(defmethod mujoco_ros_msgs::SetFloatRequest
  (:response () (instance mujoco_ros_msgs::SetFloatResponse :init)))

(setf (get mujoco_ros_msgs::SetFloatRequest :md5sum-) "5fea2e41f7b6b7661e7fdb2169a08ea4")
(setf (get mujoco_ros_msgs::SetFloatRequest :datatype-) "mujoco_ros_msgs/SetFloatRequest")
(setf (get mujoco_ros_msgs::SetFloatRequest :definition-)
      "float64 value
string admin_hash
---
bool success

")

(setf (get mujoco_ros_msgs::SetFloatResponse :md5sum-) "5fea2e41f7b6b7661e7fdb2169a08ea4")
(setf (get mujoco_ros_msgs::SetFloatResponse :datatype-) "mujoco_ros_msgs/SetFloatResponse")
(setf (get mujoco_ros_msgs::SetFloatResponse :definition-)
      "float64 value
string admin_hash
---
bool success

")



(provide :mujoco_ros_msgs/SetFloat "5fea2e41f7b6b7661e7fdb2169a08ea4")


