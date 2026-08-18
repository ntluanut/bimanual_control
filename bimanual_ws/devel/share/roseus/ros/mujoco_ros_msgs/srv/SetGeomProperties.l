;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::SetGeomProperties)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'SetGeomProperties (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::SETGEOMPROPERTIES")
  (make-package "MUJOCO_ROS_MSGS::SETGEOMPROPERTIES"))
(unless (find-package "MUJOCO_ROS_MSGS::SETGEOMPROPERTIESREQUEST")
  (make-package "MUJOCO_ROS_MSGS::SETGEOMPROPERTIESREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::SETGEOMPROPERTIESRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::SETGEOMPROPERTIESRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::SetGeomPropertiesRequest
  :super ros::object
  :slots (_properties _set_type _set_mass _set_friction _set_size _admin_hash ))

(defmethod mujoco_ros_msgs::SetGeomPropertiesRequest
  (:init
   (&key
    ((:properties __properties) (instance mujoco_ros_msgs::GeomProperties :init))
    ((:set_type __set_type) nil)
    ((:set_mass __set_mass) nil)
    ((:set_friction __set_friction) nil)
    ((:set_size __set_size) nil)
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _properties __properties)
   (setq _set_type __set_type)
   (setq _set_mass __set_mass)
   (setq _set_friction __set_friction)
   (setq _set_size __set_size)
   (setq _admin_hash (string __admin_hash))
   self)
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:set_type
   (&optional (__set_type :null))
   (if (not (eq __set_type :null)) (setq _set_type __set_type)) _set_type)
  (:set_mass
   (&optional (__set_mass :null))
   (if (not (eq __set_mass :null)) (setq _set_mass __set_mass)) _set_mass)
  (:set_friction
   (&optional (__set_friction :null))
   (if (not (eq __set_friction :null)) (setq _set_friction __set_friction)) _set_friction)
  (:set_size
   (&optional (__set_size :null))
   (if (not (eq __set_size :null)) (setq _set_size __set_size)) _set_size)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/GeomProperties _properties
    (send _properties :serialization-length)
    ;; bool _set_type
    1
    ;; bool _set_mass
    1
    ;; bool _set_friction
    1
    ;; bool _set_size
    1
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/GeomProperties _properties
       (send _properties :serialize s)
     ;; bool _set_type
       (if _set_type (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_mass
       (if _set_mass (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_friction
       (if _set_friction (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_size
       (if _set_size (write-byte -1 s) (write-byte 0 s))
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/GeomProperties _properties
     (send _properties :deserialize buf ptr-) (incf ptr- (send _properties :serialization-length))
   ;; bool _set_type
     (setq _set_type (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_mass
     (setq _set_mass (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_friction
     (setq _set_friction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_size
     (setq _set_size (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::SetGeomPropertiesResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod mujoco_ros_msgs::SetGeomPropertiesResponse
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

(defclass mujoco_ros_msgs::SetGeomProperties
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::SetGeomProperties :md5sum-) "a7072e8bafa01bef541263a9142aa174")
(setf (get mujoco_ros_msgs::SetGeomProperties :datatype-) "mujoco_ros_msgs/SetGeomProperties")
(setf (get mujoco_ros_msgs::SetGeomProperties :request) mujoco_ros_msgs::SetGeomPropertiesRequest)
(setf (get mujoco_ros_msgs::SetGeomProperties :response) mujoco_ros_msgs::SetGeomPropertiesResponse)

(defmethod mujoco_ros_msgs::SetGeomPropertiesRequest
  (:response () (instance mujoco_ros_msgs::SetGeomPropertiesResponse :init)))

(setf (get mujoco_ros_msgs::SetGeomPropertiesRequest :md5sum-) "a7072e8bafa01bef541263a9142aa174")
(setf (get mujoco_ros_msgs::SetGeomPropertiesRequest :datatype-) "mujoco_ros_msgs/SetGeomPropertiesRequest")
(setf (get mujoco_ros_msgs::SetGeomPropertiesRequest :definition-)
      "mujoco_ros_msgs/GeomProperties properties
bool set_type
bool set_mass
bool set_friction
bool set_size
string admin_hash

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
---
bool success
string status_message

")

(setf (get mujoco_ros_msgs::SetGeomPropertiesResponse :md5sum-) "a7072e8bafa01bef541263a9142aa174")
(setf (get mujoco_ros_msgs::SetGeomPropertiesResponse :datatype-) "mujoco_ros_msgs/SetGeomPropertiesResponse")
(setf (get mujoco_ros_msgs::SetGeomPropertiesResponse :definition-)
      "mujoco_ros_msgs/GeomProperties properties
bool set_type
bool set_mass
bool set_friction
bool set_size
string admin_hash

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
---
bool success
string status_message

")



(provide :mujoco_ros_msgs/SetGeomProperties "a7072e8bafa01bef541263a9142aa174")


