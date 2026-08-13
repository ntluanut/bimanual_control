
(cl:in-package :asdf)

(defsystem "bimanual_drinking_v5_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SystemState" :depends-on ("_package_SystemState"))
    (:file "_package_SystemState" :depends-on ("_package"))
    (:file "TaskCommand" :depends-on ("_package_TaskCommand"))
    (:file "_package_TaskCommand" :depends-on ("_package"))
  ))