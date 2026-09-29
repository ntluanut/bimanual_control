;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetGeomProperties)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetGeomProperties (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETGEOMPROPERTIES")
  (make-package "MUJOCO_ROS_MSGS::GETGEOMPROPERTIES"))
(unless (find-package "MUJOCO_ROS_MSGS::GETGEOMPROPERTIESREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETGEOMPROPERTIESREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETGEOMPROPERTIESRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETGEOMPROPERTIESRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetGeomPropertiesRequest
  :super ros::object
  :slots (_geom_name _admin_hash ))

(defmethod mujoco_ros_msgs::GetGeomPropertiesRequest
  (:init
   (&key
    ((:geom_name __geom_name) "")
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _geom_name (string __geom_name))
   (setq _admin_hash (string __admin_hash))
   self)
  (:geom_name
   (&optional __geom_name)
   (if __geom_name (setq _geom_name __geom_name)) _geom_name)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; string _geom_name
    4 (length _geom_name)
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _geom_name
       (write-long (length _geom_name) s) (princ _geom_name s)
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _geom_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _geom_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetGeomPropertiesResponse
  :super ros::object
  :slots (_properties _success _status_message ))

(defmethod mujoco_ros_msgs::GetGeomPropertiesResponse
  (:init
   (&key
    ((:properties __properties) (instance mujoco_ros_msgs::GeomProperties :init))
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _properties __properties)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/GeomProperties _properties
    (send _properties :serialization-length)
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/GeomProperties _properties
       (send _properties :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/GeomProperties _properties
     (send _properties :deserialize buf ptr-) (incf ptr- (send _properties :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetGeomProperties
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetGeomProperties :md5sum-) "39732699bb1604377c28257f0fc466f2")
(setf (get mujoco_ros_msgs::GetGeomProperties :datatype-) "mujoco_ros_msgs/GetGeomProperties")
(setf (get mujoco_ros_msgs::GetGeomProperties :request) mujoco_ros_msgs::GetGeomPropertiesRequest)
(setf (get mujoco_ros_msgs::GetGeomProperties :response) mujoco_ros_msgs::GetGeomPropertiesResponse)

(defmethod mujoco_ros_msgs::GetGeomPropertiesRequest
  (:response () (instance mujoco_ros_msgs::GetGeomPropertiesResponse :init)))

(setf (get mujoco_ros_msgs::GetGeomPropertiesRequest :md5sum-) "39732699bb1604377c28257f0fc466f2")
(setf (get mujoco_ros_msgs::GetGeomPropertiesRequest :datatype-) "mujoco_ros_msgs/GetGeomPropertiesRequest")
(setf (get mujoco_ros_msgs::GetGeomPropertiesRequest :definition-)
      "string geom_name
string admin_hash
---
mujoco_ros_msgs/GeomProperties properties
bool success
string status_message


================================================================================
MSG: mujoco_ros_msgs/GeomProperties
string name
mujoco_ros_msgs/GeomType type
float32 body_mass # total mass of the body this geom belongs to
float32 size_0
float32 size_1
float32 size_2
float32 friction_slide
float32 friction_spin
float32 friction_roll

================================================================================
MSG: mujoco_ros_msgs/GeomType
uint16 value
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

(setf (get mujoco_ros_msgs::GetGeomPropertiesResponse :md5sum-) "39732699bb1604377c28257f0fc466f2")
(setf (get mujoco_ros_msgs::GetGeomPropertiesResponse :datatype-) "mujoco_ros_msgs/GetGeomPropertiesResponse")
(setf (get mujoco_ros_msgs::GetGeomPropertiesResponse :definition-)
      "string geom_name
string admin_hash
---
mujoco_ros_msgs/GeomProperties properties
bool success
string status_message


================================================================================
MSG: mujoco_ros_msgs/GeomProperties
string name
mujoco_ros_msgs/GeomType type
float32 body_mass # total mass of the body this geom belongs to
float32 size_0
float32 size_1
float32 size_2
float32 friction_slide
float32 friction_spin
float32 friction_roll

================================================================================
MSG: mujoco_ros_msgs/GeomType
uint16 value
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



(provide :mujoco_ros_msgs/GetGeomProperties "39732699bb1604377c28257f0fc466f2")


