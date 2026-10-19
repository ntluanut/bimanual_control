
(cl:in-package :asdf)

(defsystem "armcontrol-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveToTarget" :depends-on ("_package_MoveToTarget"))
    (:file "_package_MoveToTarget" :depends-on ("_package"))
    (:file "MoveToTargetOri" :depends-on ("_package_MoveToTargetOri"))
    (:file "_package_MoveToTargetOri" :depends-on ("_package"))
  ))