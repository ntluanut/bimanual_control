;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::RegisterSensorNoiseModels)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'RegisterSensorNoiseModels (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::REGISTERSENSORNOISEMODELS")
  (make-package "MUJOCO_ROS_MSGS::REGISTERSENSORNOISEMODELS"))
(unless (find-package "MUJOCO_ROS_MSGS::REGISTERSENSORNOISEMODELSREQUEST")
  (make-package "MUJOCO_ROS_MSGS::REGISTERSENSORNOISEMODELSREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::REGISTERSENSORNOISEMODELSRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::REGISTERSENSORNOISEMODELSRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::RegisterSensorNoiseModelsRequest
  :super ros::object
  :slots (_noise_models _admin_hash ))

(defmethod mujoco_ros_msgs::RegisterSensorNoiseModelsRequest
  (:init
   (&key
    ((:noise_models __noise_models) ())
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _noise_models __noise_models)
   (setq _admin_hash (string __admin_hash))
   self)
  (:noise_models
   (&rest __noise_models)
   (if (keywordp (car __noise_models))
       (send* _noise_models __noise_models)
     (progn
       (if __noise_models (setq _noise_models (car __noise_models)))
       _noise_models)))
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/SensorNoiseModel[] _noise_models
    (apply #'+ (send-all _noise_models :serialization-length)) 4
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/SensorNoiseModel[] _noise_models
     (write-long (length _noise_models) s)
     (dolist (elem _noise_models)
       (send elem :serialize s)
       )
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/SensorNoiseModel[] _noise_models
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _noise_models (let (r) (dotimes (i n) (push (instance mujoco_ros_msgs::SensorNoiseModel :init) r)) r))
     (dolist (elem- _noise_models)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::RegisterSensorNoiseModelsResponse
  :super ros::object
  :slots (_success ))

(defmethod mujoco_ros_msgs::RegisterSensorNoiseModelsResponse
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

(defclass mujoco_ros_msgs::RegisterSensorNoiseModels
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::RegisterSensorNoiseModels :md5sum-) "70ceb82b11a1148543bda7e861dfd43b")
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModels :datatype-) "mujoco_ros_msgs/RegisterSensorNoiseModels")
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModels :request) mujoco_ros_msgs::RegisterSensorNoiseModelsRequest)
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModels :response) mujoco_ros_msgs::RegisterSensorNoiseModelsResponse)

(defmethod mujoco_ros_msgs::RegisterSensorNoiseModelsRequest
  (:response () (instance mujoco_ros_msgs::RegisterSensorNoiseModelsResponse :init)))

(setf (get mujoco_ros_msgs::RegisterSensorNoiseModelsRequest :md5sum-) "70ceb82b11a1148543bda7e861dfd43b")
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModelsRequest :datatype-) "mujoco_ros_msgs/RegisterSensorNoiseModelsRequest")
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModelsRequest :definition-)
      "mujoco_ros_msgs/SensorNoiseModel[] noise_models
string admin_hash

================================================================================
MSG: mujoco_ros_msgs/SensorNoiseModel
# Set the noise model of a sensor defining mean and standard deviation for each dimension
# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!
string sensor_name
float64[] mean
float64[] std
uint8 set_flag
---
bool success

")

(setf (get mujoco_ros_msgs::RegisterSensorNoiseModelsResponse :md5sum-) "70ceb82b11a1148543bda7e861dfd43b")
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModelsResponse :datatype-) "mujoco_ros_msgs/RegisterSensorNoiseModelsResponse")
(setf (get mujoco_ros_msgs::RegisterSensorNoiseModelsResponse :definition-)
      "mujoco_ros_msgs/SensorNoiseModel[] noise_models
string admin_hash

================================================================================
MSG: mujoco_ros_msgs/SensorNoiseModel
# Set the noise model of a sensor defining mean and standard deviation for each dimension
# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!
string sensor_name
float64[] mean
float64[] std
uint8 set_flag
---
bool success

")



(provide :mujoco_ros_msgs/RegisterSensorNoiseModels "70ceb82b11a1148543bda7e861dfd43b")


