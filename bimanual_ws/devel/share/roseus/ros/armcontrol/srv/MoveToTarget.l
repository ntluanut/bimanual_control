;; Auto-generated. Do not edit!


(when (boundp 'armcontrol::MoveToTarget)
  (if (not (find-package "ARMCONTROL"))
    (make-package "ARMCONTROL"))
  (shadow 'MoveToTarget (find-package "ARMCONTROL")))
(unless (find-package "ARMCONTROL::MOVETOTARGET")
  (make-package "ARMCONTROL::MOVETOTARGET"))
(unless (find-package "ARMCONTROL::MOVETOTARGETREQUEST")
  (make-package "ARMCONTROL::MOVETOTARGETREQUEST"))
(unless (find-package "ARMCONTROL::MOVETOTARGETRESPONSE")
  (make-package "ARMCONTROL::MOVETOTARGETRESPONSE"))

(in-package "ROS")





(defclass armcontrol::MoveToTargetRequest
  :super ros::object
  :slots (_arm _x _y _z ))

(defmethod armcontrol::MoveToTargetRequest
  (:init
   (&key
    ((:arm __arm) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _arm (string __arm))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; string _arm
    4 (length _arm)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _arm
       (write-long (length _arm) s) (princ _arm s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _arm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass armcontrol::MoveToTargetResponse
  :super ros::object
  :slots ())

(defmethod armcontrol::MoveToTargetResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass armcontrol::MoveToTarget
  :super ros::object
  :slots ())

(setf (get armcontrol::MoveToTarget :md5sum-) "350d48a9c3526923e8d975c2c3cd295a")
(setf (get armcontrol::MoveToTarget :datatype-) "armcontrol/MoveToTarget")
(setf (get armcontrol::MoveToTarget :request) armcontrol::MoveToTargetRequest)
(setf (get armcontrol::MoveToTarget :response) armcontrol::MoveToTargetResponse)

(defmethod armcontrol::MoveToTargetRequest
  (:response () (instance armcontrol::MoveToTargetResponse :init)))

(setf (get armcontrol::MoveToTargetRequest :md5sum-) "350d48a9c3526923e8d975c2c3cd295a")
(setf (get armcontrol::MoveToTargetRequest :datatype-) "armcontrol/MoveToTargetRequest")
(setf (get armcontrol::MoveToTargetRequest :definition-)
      "string arm
float64 x
float64 y
float64 z
---

")

(setf (get armcontrol::MoveToTargetResponse :md5sum-) "350d48a9c3526923e8d975c2c3cd295a")
(setf (get armcontrol::MoveToTargetResponse :datatype-) "armcontrol/MoveToTargetResponse")
(setf (get armcontrol::MoveToTargetResponse :definition-)
      "string arm
float64 x
float64 y
float64 z
---

")



(provide :armcontrol/MoveToTarget "350d48a9c3526923e8d975c2c3cd295a")


