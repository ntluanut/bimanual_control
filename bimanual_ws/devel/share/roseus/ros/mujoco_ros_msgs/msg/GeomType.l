;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GeomType)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GeomType (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GEOMTYPE")
  (make-package "MUJOCO_ROS_MSGS::GEOMTYPE"))

(in-package "ROS")
;;//! \htmlinclude GeomType.msg.html


(intern "*PLANE*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*PLANE* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*PLANE* 0)
(intern "*HFIELD*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*HFIELD* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*HFIELD* 1)
(intern "*SPHERE*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*SPHERE* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*SPHERE* 2)
(intern "*CAPSULE*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*CAPSULE* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*CAPSULE* 3)
(intern "*ELLIPSOID*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*ELLIPSOID* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*ELLIPSOID* 4)
(intern "*CYLINDER*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*CYLINDER* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*CYLINDER* 5)
(intern "*BOX*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*BOX* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*BOX* 6)
(intern "*MESH*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*MESH* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*MESH* 7)
(intern "*GEOM_NONE*" (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(shadow '*GEOM_NONE* (find-package "MUJOCO_ROS_MSGS::GEOMTYPE"))
(defconstant mujoco_ros_msgs::GeomType::*GEOM_NONE* 1001)

(defun mujoco_ros_msgs::GeomType-to-symbol (const)
  (cond
        ((= const 0) 'mujoco_ros_msgs::GeomType::*PLANE*)
        ((= const 1) 'mujoco_ros_msgs::GeomType::*HFIELD*)
        ((= const 2) 'mujoco_ros_msgs::GeomType::*SPHERE*)
        ((= const 3) 'mujoco_ros_msgs::GeomType::*CAPSULE*)
        ((= const 4) 'mujoco_ros_msgs::GeomType::*ELLIPSOID*)
        ((= const 5) 'mujoco_ros_msgs::GeomType::*CYLINDER*)
        ((= const 6) 'mujoco_ros_msgs::GeomType::*BOX*)
        ((= const 7) 'mujoco_ros_msgs::GeomType::*MESH*)
        ((= const 1001) 'mujoco_ros_msgs::GeomType::*GEOM_NONE*)
        (t nil)))

(defclass mujoco_ros_msgs::GeomType
  :super ros::object
  :slots (_value ))

(defmethod mujoco_ros_msgs::GeomType
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::GeomType :md5sum-) "9a7c37d926d01c7f41edb14bd36b3b02")
(setf (get mujoco_ros_msgs::GeomType :datatype-) "mujoco_ros_msgs/GeomType")
(setf (get mujoco_ros_msgs::GeomType :definition-)
      "uint16 value
uint16 PLANE=0
uint16 HFIELD=1
uint16 SPHERE=2
uint16 CAPSULE=3
uint16 ELLIPSOID=4
uint16 CYLINDER=5
uint16 BOX=6
uint16 MESH=7
uint16 GEOM_NONE = 1001

")



(provide :mujoco_ros_msgs/GeomType "9a7c37d926d01c7f41edb14bd36b3b02")


