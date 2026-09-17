;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::EqualityConstraintParameters)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'EqualityConstraintParameters (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTPARAMETERS")
  (make-package "MUJOCO_ROS_MSGS::EQUALITYCONSTRAINTPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude EqualityConstraintParameters.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mujoco_ros_msgs::EqualityConstraintParameters
  :super ros::object
  :slots (_name _type _solverParameters _active _classParam _element1 _element2 _torquescale _anchor _relpose _polycoef ))

(defmethod mujoco_ros_msgs::EqualityConstraintParameters
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) (instance mujoco_ros_msgs::EqualityConstraintType :init))
    ((:solverParameters __solverParameters) (instance mujoco_ros_msgs::SolverParameters :init))
    ((:active __active) nil)
    ((:classParam __classParam) "")
    ((:element1 __element1) "")
    ((:element2 __element2) "")
    ((:torquescale __torquescale) 0.0)
    ((:anchor __anchor) (instance geometry_msgs::Vector3 :init))
    ((:relpose __relpose) (instance geometry_msgs::Pose :init))
    ((:polycoef __polycoef) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type __type)
   (setq _solverParameters __solverParameters)
   (setq _active __active)
   (setq _classParam (string __classParam))
   (setq _element1 (string __element1))
   (setq _element2 (string __element2))
   (setq _torquescale (float __torquescale))
   (setq _anchor __anchor)
   (setq _relpose __relpose)
   (setq _polycoef __polycoef)
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
  (:solverParameters
   (&rest __solverParameters)
   (if (keywordp (car __solverParameters))
       (send* _solverParameters __solverParameters)
     (progn
       (if __solverParameters (setq _solverParameters (car __solverParameters)))
       _solverParameters)))
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:classParam
   (&optional __classParam)
   (if __classParam (setq _classParam __classParam)) _classParam)
  (:element1
   (&optional __element1)
   (if __element1 (setq _element1 __element1)) _element1)
  (:element2
   (&optional __element2)
   (if __element2 (setq _element2 __element2)) _element2)
  (:torquescale
   (&optional __torquescale)
   (if __torquescale (setq _torquescale __torquescale)) _torquescale)
  (:anchor
   (&rest __anchor)
   (if (keywordp (car __anchor))
       (send* _anchor __anchor)
     (progn
       (if __anchor (setq _anchor (car __anchor)))
       _anchor)))
  (:relpose
   (&rest __relpose)
   (if (keywordp (car __relpose))
       (send* _relpose __relpose)
     (progn
       (if __relpose (setq _relpose (car __relpose)))
       _relpose)))
  (:polycoef
   (&optional __polycoef)
   (if __polycoef (setq _polycoef __polycoef)) _polycoef)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; mujoco_ros_msgs/EqualityConstraintType _type
    (send _type :serialization-length)
    ;; mujoco_ros_msgs/SolverParameters _solverParameters
    (send _solverParameters :serialization-length)
    ;; bool _active
    1
    ;; string _classParam
    4 (length _classParam)
    ;; string _element1
    4 (length _element1)
    ;; string _element2
    4 (length _element2)
    ;; float64 _torquescale
    8
    ;; geometry_msgs/Vector3 _anchor
    (send _anchor :serialization-length)
    ;; geometry_msgs/Pose _relpose
    (send _relpose :serialization-length)
    ;; float64[] _polycoef
    (* 8    (length _polycoef)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; mujoco_ros_msgs/EqualityConstraintType _type
       (send _type :serialize s)
     ;; mujoco_ros_msgs/SolverParameters _solverParameters
       (send _solverParameters :serialize s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; string _classParam
       (write-long (length _classParam) s) (princ _classParam s)
     ;; string _element1
       (write-long (length _element1) s) (princ _element1 s)
     ;; string _element2
       (write-long (length _element2) s) (princ _element2 s)
     ;; float64 _torquescale
       (sys::poke _torquescale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _anchor
       (send _anchor :serialize s)
     ;; geometry_msgs/Pose _relpose
       (send _relpose :serialize s)
     ;; float64[] _polycoef
     (write-long (length _polycoef) s)
     (dotimes (i (length _polycoef))
       (sys::poke (elt _polycoef i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mujoco_ros_msgs/EqualityConstraintType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; mujoco_ros_msgs/SolverParameters _solverParameters
     (send _solverParameters :deserialize buf ptr-) (incf ptr- (send _solverParameters :serialization-length))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _classParam
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _classParam (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _element1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _element1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _element2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _element2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _torquescale
     (setq _torquescale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _anchor
     (send _anchor :deserialize buf ptr-) (incf ptr- (send _anchor :serialization-length))
   ;; geometry_msgs/Pose _relpose
     (send _relpose :deserialize buf ptr-) (incf ptr- (send _relpose :serialization-length))
   ;; float64[] _polycoef
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polycoef (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polycoef i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mujoco_ros_msgs::EqualityConstraintParameters :md5sum-) "152c371cf6b748601a865ee2d968aec7")
(setf (get mujoco_ros_msgs::EqualityConstraintParameters :datatype-) "mujoco_ros_msgs/EqualityConstraintParameters")
(setf (get mujoco_ros_msgs::EqualityConstraintParameters :definition-)
      "string name
mujoco_ros_msgs/EqualityConstraintType type
mujoco_ros_msgs/SolverParameters solverParameters
bool active
string classParam
string element1
string element2
float64 torquescale
geometry_msgs/Vector3 anchor
geometry_msgs/Pose relpose
float64[] polycoef

================================================================================
MSG: mujoco_ros_msgs/EqualityConstraintType
uint16 value
uint16 CONNECT=0
uint16 WELD=1
uint16 JOINT=2
uint16 TENDON=3

================================================================================
MSG: mujoco_ros_msgs/SolverParameters
# solimp parameters

float64 dmin
float64 dmax
float64 width
float64 midpoint
float64 power

# solref parameters

float64 timeconst
float64 dampratio

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mujoco_ros_msgs/EqualityConstraintParameters "152c371cf6b748601a865ee2d968aec7")


