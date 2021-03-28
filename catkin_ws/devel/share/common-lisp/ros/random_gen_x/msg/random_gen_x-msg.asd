
(cl:in-package :asdf)

(defsystem "random_gen_x-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "control_msg" :depends-on ("_package_control_msg"))
    (:file "_package_control_msg" :depends-on ("_package"))
  ))