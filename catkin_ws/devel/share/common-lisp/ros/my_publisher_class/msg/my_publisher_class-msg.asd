
(cl:in-package :asdf)

(defsystem "my_publisher_class-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "class_msg" :depends-on ("_package_class_msg"))
    (:file "_package_class_msg" :depends-on ("_package"))
  ))