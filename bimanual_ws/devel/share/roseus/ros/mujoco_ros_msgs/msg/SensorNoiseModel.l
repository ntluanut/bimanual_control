;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SensorNoiseModel)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SensorNoiseModel (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SENSORNOISEMODEL")
  (make-package "MUJOCO_ROS_MSGS::SENSORNOISEMODEL"))

(in-package "ROS")
;;//! \htmlinclude SensorNoiseModel.msg.html


(defclass mujoco_ros_msgs::SensorNoiseModel
  :super ros::object
  :slots (_sensor_name _mean _std _set_flag ))

(defmethod mujoco_ros_msgs::SensorNoiseModel
  (:init
   (&key
    ((:sensor_name __sensor_name) "")
    ((:mean __mean) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:std __std) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:set_flag __set_flag) 0)
    )
   (send-super :init)
   (setq _sensor_name (string __sensor_name))
   (setq _mean __mean)
   (setq _std __std)
   (setq _set_flag (round __set_flag))
   self)
  (:sensor_name
   (&optional __sensor_name)
   (if __sensor_name (setq _sensor_name __sensor_name)) _sensor_name)
  (:mean
   (&optional __mean)
   (if __mean (setq _mean __mean)) _mean)
  (:std
   (&optional __std)
   (if __std (setq _std __std)) _std)
  (:set_flag
   (&optional __set_flag)
   (if __set_flag (setq _set_flag __set_flag)) _set_flag)
  (:serialization-length
   ()
   (+
    ;; string _sensor_name
    4 (length _sensor_name)
    ;; float64[] _mean
    (* 8    (length _mean)) 4
    ;; float64[] _std
    (* 8    (length _std)) 4
    ;; uint8 _set_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_name
       (write-long (length _sensor_name) s) (princ _sensor_name s)
     ;; float64[] _mean
     (write-long (length _mean) s)
     (dotimes (i (length _mean))
       (sys::poke (elt _mean i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _std
     (write-long (length _std) s)
     (dotimes (i (length _std))
       (sys::poke (elt _std i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _set_flag
       (write-byte _set_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _mean
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mean (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mean i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _std
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _std (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _std i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8 _set_flag
     (setq _set_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::SensorNoiseModel :md5sum-) "ecdfe0a7e1630fddef7c31cf04081974")
(setf (get mujoco_ros_msgs::SensorNoiseModel :datatype-) "mujoco_ros_msgs/SensorNoiseModel")
(setf (get mujoco_ros_msgs::SensorNoiseModel :definition-)
      "# Set the noise model of a sensor defining mean and standard deviation for each dimension
# For quaternion sensors noise is calculated in euler angles (rad), converted to a quaternion and then applied. Thus only three mean/std pairs are required!
string sensor_name
float64[] mean
float64[] std
uint8 set_flag

")



(provide :mujoco_ros_msgs/SensorNoiseModel "ecdfe0a7e1630fddef7c31cf04081974")


