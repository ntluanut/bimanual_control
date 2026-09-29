;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SolverParameters)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SolverParameters (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SOLVERPARAMETERS")
  (make-package "MUJOCO_ROS_MSGS::SOLVERPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude SolverParameters.msg.html


(defclass mujoco_ros_msgs::SolverParameters
  :super ros::object
  :slots (_dmin _dmax _width _midpoint _power _timeconst _dampratio ))

(defmethod mujoco_ros_msgs::SolverParameters
  (:init
   (&key
    ((:dmin __dmin) 0.0)
    ((:dmax __dmax) 0.0)
    ((:width __width) 0.0)
    ((:midpoint __midpoint) 0.0)
    ((:power __power) 0.0)
    ((:timeconst __timeconst) 0.0)
    ((:dampratio __dampratio) 0.0)
    )
   (send-super :init)
   (setq _dmin (float __dmin))
   (setq _dmax (float __dmax))
   (setq _width (float __width))
   (setq _midpoint (float __midpoint))
   (setq _power (float __power))
   (setq _timeconst (float __timeconst))
   (setq _dampratio (float __dampratio))
   self)
  (:dmin
   (&optional __dmin)
   (if __dmin (setq _dmin __dmin)) _dmin)
  (:dmax
   (&optional __dmax)
   (if __dmax (setq _dmax __dmax)) _dmax)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:midpoint
   (&optional __midpoint)
   (if __midpoint (setq _midpoint __midpoint)) _midpoint)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:timeconst
   (&optional __timeconst)
   (if __timeconst (setq _timeconst __timeconst)) _timeconst)
  (:dampratio
   (&optional __dampratio)
   (if __dampratio (setq _dampratio __dampratio)) _dampratio)
  (:serialization-length
   ()
   (+
    ;; float64 _dmin
    8
    ;; float64 _dmax
    8
    ;; float64 _width
    8
    ;; float64 _midpoint
    8
    ;; float64 _power
    8
    ;; float64 _timeconst
    8
    ;; float64 _dampratio
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dmin
       (sys::poke _dmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dmax
       (sys::poke _dmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _midpoint
       (sys::poke _midpoint (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _power
       (sys::poke _power (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timeconst
       (sys::poke _timeconst (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dampratio
       (sys::poke _dampratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dmin
     (setq _dmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dmax
     (setq _dmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _midpoint
     (setq _midpoint (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _power
     (setq _power (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timeconst
     (setq _timeconst (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dampratio
     (setq _dampratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::SolverParameters :md5sum-) "5b04c6e904f30629555e3a6f113fc0eb")
(setf (get mujoco_ros_msgs::SolverParameters :datatype-) "mujoco_ros_msgs/SolverParameters")
(setf (get mujoco_ros_msgs::SolverParameters :definition-)
      "# solimp parameters

float64 dmin
float64 dmax
float64 width
float64 midpoint
float64 power

# solref parameters

float64 timeconst
float64 dampratio

")



(provide :mujoco_ros_msgs/SolverParameters "5b04c6e904f30629555e3a6f113fc0eb")


