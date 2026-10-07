
(cl:in-package :asdf)

(defsystem "armcontrol-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveToTarget" :depends-on ("_package_MoveToTarget"))
    (:file "_package_MoveToTarget" :depends-on ("_package"))
  ))