;; Auto-generated. Do not edit!


(when (boundp 'mujoco_ros_msgs::GetEqualityConstraintParameters)
  (if (not (find-package "MUJOCO_ROS_MSGS"))
    (make-package "MUJOCO_ROS_MSGS"))
  (shadow 'GetEqualityConstraintParameters (find-package "MUJOCO_ROS_MSGS")))
(unless (find-package "MUJOCO_ROS_MSGS::GETEQUALITYCONSTRAINTPARAMETERS")
  (make-package "MUJOCO_ROS_MSGS::GETEQUALITYCONSTRAINTPARAMETERS"))
(unless (find-package "MUJOCO_ROS_MSGS::GETEQUALITYCONSTRAINTPARAMETERSREQUEST")
  (make-package "MUJOCO_ROS_MSGS::GETEQUALITYCONSTRAINTPARAMETERSREQUEST"))
(unless (find-package "MUJOCO_ROS_MSGS::GETEQUALITYCONSTRAINTPARAMETERSRESPONSE")
  (make-package "MUJOCO_ROS_MSGS::GETEQUALITYCONSTRAINTPARAMETERSRESPONSE"))

(in-package "ROS")





(defclass mujoco_ros_msgs::GetEqualityConstraintParametersRequest
  :super ros::object
  :slots (_names _admin_hash ))

(defmethod mujoco_ros_msgs::GetEqualityConstraintParametersRequest
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:admin_hash __admin_hash) "")
    )
   (send-super :init)
   (setq _names __names)
   (setq _admin_hash (string __admin_hash))
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:admin_hash
   (&optional __admin_hash)
   (if __admin_hash (setq _admin_hash __admin_hash)) _admin_hash)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; string _admin_hash
    4 (length _admin_hash)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _admin_hash
       (write-long (length _admin_hash) s) (princ _admin_hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _admin_hash
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _admin_hash (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetEqualityConstraintParametersResponse
  :super ros::object
  :slots (_parameters _success _status_message ))

(defmethod mujoco_ros_msgs::GetEqualityConstraintParametersResponse
  (:init
   (&key
    ((:parameters __parameters) ())
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _parameters __parameters)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; mujoco_ros_msgs/EqualityConstraintParameters[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mujoco_ros_msgs/EqualityConstraintParameters[] _parameters
     (write-long (length _parameters) s)
     (dolist (elem _parameters)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mujoco_ros_msgs/EqualityConstraintParameters[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (let (r) (dotimes (i n) (push (instance mujoco_ros_msgs::EqualityConstraintParameters :init) r)) r))
     (dolist (elem- _parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mujoco_ros_msgs::GetEqualityConstraintParameters
  :super ros::object
  :slots ())

(setf (get mujoco_ros_msgs::GetEqualityConstraintParameters :md5sum-) "282e8dd7ae13e3ddf31cbad398a879a7")
(setf (get mujoco_ros_msgs::GetEqualityConstraintParameters :datatype-) "mujoco_ros_msgs/GetEqualityConstraintParameters")
(setf (get mujoco_ros_msgs::GetEqualityConstraintParameters :request) mujoco_ros_msgs::GetEqualityConstraintParametersRequest)
(setf (get mujoco_ros_msgs::GetEqualityConstraintParameters :response) mujoco_ros_msgs::GetEqualityConstraintParametersResponse)

(defmethod mujoco_ros_msgs::GetEqualityConstraintParametersRequest
  (:response () (instance mujoco_ros_msgs::GetEqualityConstraintParametersResponse :init)))

(setf (get mujoco_ros_msgs::GetEqualityConstraintParametersRequest :md5sum-) "282e8dd7ae13e3ddf31cbad398a879a7")
(setf (get mujoco_ros_msgs::GetEqualityConstraintParametersRequest :datatype-) "mujoco_ros_msgs/GetEqualityConstraintParametersRequest")
(setf (get mujoco_ros_msgs::GetEqualityConstraintParametersRequest :definition-)
      "string[] names
string admin_hash
---
mujoco_ros_msgs/EqualityConstraintParameters[] parameters
bool success
string status_message


================================================================================
MSG: mujoco_ros_msgs/EqualityConstraintParameters
string name
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

(setf (get mujoco_ros_msgs::GetEqualityConstraintParametersResponse :md5sum-) "282e8dd7ae13e3ddf31cbad398a879a7")
(setf (get mujoco_ros_msgs::GetEqualityConstraintParametersResponse :datatype-) "mujoco_ros_msgs/GetEqualityConstraintParametersResponse")
(setf (get mujoco_ros_msgs::GetEqualityConstraintParametersResponse :definition-)
      "string[] names
string admin_hash
---
mujoco_ros_msgs/EqualityConstraintParameters[] parameters
bool success
string status_message


================================================================================
MSG: mujoco_ros_msgs/EqualityConstraintParameters
string name
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



(provide :mujoco_ros_msgs/GetEqualityConstraintParameters "282e8dd7ae13e3ddf31cbad398a879a7")


