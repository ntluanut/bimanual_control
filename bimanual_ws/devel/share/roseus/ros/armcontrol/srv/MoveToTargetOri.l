;; Auto-generated. Do not edit!


(when (boundp 'armcontrol::MoveToTargetOri)
  (if (not (find-package "ARMCONTROL"))
    (make-package "ARMCONTROL"))
  (shadow 'MoveToTargetOri (find-package "ARMCONTROL")))
(unless (find-package "ARMCONTROL::MOVETOTARGETORI")
  (make-package "ARMCONTROL::MOVETOTARGETORI"))
(unless (find-package "ARMCONTROL::MOVETOTARGETORIREQUEST")
  (make-package "ARMCONTROL::MOVETOTARGETORIREQUEST"))
(unless (find-package "ARMCONTROL::MOVETOTARGETORIRESPONSE")
  (make-package "ARMCONTROL::MOVETOTARGETORIRESPONSE"))

(in-package "ROS")





(defclass armcontrol::MoveToTargetOriRequest
  :super ros::object
  :slots (_arm _qx _qy _qz _qw ))

(defmethod armcontrol::MoveToTargetOriRequest
  (:init
   (&key
    ((:arm __arm) "")
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:qw __qw) 0.0)
    )
   (send-super :init)
   (setq _arm (string __arm))
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _qw (float __qw))
   self)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:serialization-length
   ()
   (+
    ;; string _arm
    4 (length _arm)
    ;; float64 _qx
    8
    ;; float64 _qy
    8
    ;; float64 _qz
    8
    ;; float64 _qw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _arm
       (write-long (length _arm) s) (princ _arm s)
     ;; float64 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qw
       (sys::poke _qw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _arm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _arm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _qx
     (setq _qx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qy
     (setq _qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qz
     (setq _qz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qw
     (setq _qw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass armcontrol::MoveToTargetOriResponse
  :super ros::object
  :slots (_reached ))

(defmethod armcontrol::MoveToTargetOriResponse
  (:init
   (&key
    ((:reached __reached) nil)
    )
   (send-super :init)
   (setq _reached __reached)
   self)
  (:reached
   (&optional (__reached :null))
   (if (not (eq __reached :null)) (setq _reached __reached)) _reached)
  (:serialization-length
   ()
   (+
    ;; bool _reached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reached
       (if _reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reached
     (setq _reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass armcontrol::MoveToTargetOri
  :super ros::object
  :slots ())

(setf (get armcontrol::MoveToTargetOri :md5sum-) "e466be8ecf2aa51b986a6adfb9b0147e")
(setf (get armcontrol::MoveToTargetOri :datatype-) "armcontrol/MoveToTargetOri")
(setf (get armcontrol::MoveToTargetOri :request) armcontrol::MoveToTargetOriRequest)
(setf (get armcontrol::MoveToTargetOri :response) armcontrol::MoveToTargetOriResponse)

(defmethod armcontrol::MoveToTargetOriRequest
  (:response () (instance armcontrol::MoveToTargetOriResponse :init)))

(setf (get armcontrol::MoveToTargetOriRequest :md5sum-) "e466be8ecf2aa51b986a6adfb9b0147e")
(setf (get armcontrol::MoveToTargetOriRequest :datatype-) "armcontrol/MoveToTargetOriRequest")
(setf (get armcontrol::MoveToTargetOriRequest :definition-)
      "string arm
float64 qx
float64 qy
float64 qz
float64 qw
---
bool reached
")

(setf (get armcontrol::MoveToTargetOriResponse :md5sum-) "e466be8ecf2aa51b986a6adfb9b0147e")
(setf (get armcontrol::MoveToTargetOriResponse :datatype-) "armcontrol/MoveToTargetOriResponse")
(setf (get armcontrol::MoveToTargetOriResponse :definition-)
      "string arm
float64 qx
float64 qy
float64 qz
float64 qw
---
bool reached
")



(provide :armcontrol/MoveToTargetOri "e466be8ecf2aa51b986a6adfb9b0147e")


