;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GeomProperties)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GeomProperties (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GEOMPROPERTIES")
  (make-package "MUJOCO_ROS_MSGS::GEOMPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude GeomProperties.msg.html


(defclass mujoco_ros_msgs::GeomProperties
  :super ros::object
  :slots (_name _type _body_mass _size_0 _size_1 _size_2 _friction_slide _friction_spin _friction_roll ))

(defmethod mujoco_ros_msgs::GeomProperties
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) (instance mujoco_ros_msgs::GeomType :init))
    ((:body_mass __body_mass) 0.0)
    ((:size_0 __size_0) 0.0)
    ((:size_1 __size_1) 0.0)
    ((:size_2 __size_2) 0.0)
    ((:friction_slide __friction_slide) 0.0)
    ((:friction_spin __friction_spin) 0.0)
    ((:friction_roll __friction_roll) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type __type)
   (setq _body_mass (float __body_mass))
   (setq _size_0 (float __size_0))
   (setq _size_1 (float __size_1))
   (setq _size_2 (float __size_2))
   (setq _friction_slide (float __friction_slide))
   (setq _friction_spin (float __friction_spin))
   (setq _friction_roll (float __friction_roll))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:body_mass
   (&optional __body_mass)
   (if __body_mass (setq _body_mass __body_mass)) _body_mass)
  (:size_0
   (&optional __size_0)
   (if __size_0 (setq _size_0 __size_0)) _size_0)
  (:size_1
   (&optional __size_1)
   (if __size_1 (setq _size_1 __size_1)) _size_1)
  (:size_2
   (&optional __size_2)
   (if __size_2 (setq _size_2 __size_2)) _size_2)
  (:friction_slide
   (&optional __friction_slide)
   (if __friction_slide (setq _friction_slide __friction_slide)) _friction_slide)
  (:friction_spin
   (&optional __friction_spin)
   (if __friction_spin (setq _friction_spin __friction_spin)) _friction_spin)
  (:friction_roll
   (&optional __friction_roll)
   (if __friction_roll (setq _friction_roll __friction_roll)) _friction_roll)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; mujoco_ros_msgs/GeomType _type
    (send _type :serialization-length)
    ;; float32 _body_mass
    4
    ;; float32 _size_0
    4
    ;; float32 _size_1
    4
    ;; float32 _size_2
    4
    ;; float32 _friction_slide
    4
    ;; float32 _friction_spin
    4
    ;; float32 _friction_roll
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; mujoco_ros_msgs/GeomType _type
       (send _type :serialize s)
     ;; float32 _body_mass
       (sys::poke _body_mass (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _size_0
       (sys::poke _size_0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _size_1
       (sys::poke _size_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _size_2
       (sys::poke _size_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _friction_slide
       (sys::poke _friction_slide (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _friction_spin
       (sys::poke _friction_spin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _friction_roll
       (sys::poke _friction_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mujoco_ros_msgs/GeomType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _body_mass
     (setq _body_mass (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _size_0
     (setq _size_0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _size_1
     (setq _size_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _size_2
     (setq _size_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _friction_slide
     (setq _friction_slide (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _friction_spin
     (setq _friction_spin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _friction_roll
     (setq _friction_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::GeomProperties :md5sum-) "bf0bfaf1ba9ee978c70396532fa14531")
(setf (get mujoco_ros_msgs::GeomProperties :datatype-) "mujoco_ros_msgs/GeomProperties")
(setf (get mujoco_ros_msgs::GeomProperties :definition-)
      "string name
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



(provide :mujoco_ros_msgs/GeomProperties "bf0bfaf1ba9ee978c70396532fa14531")


