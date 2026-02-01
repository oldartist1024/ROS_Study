
(cl:in-package :asdf)

(defsystem "ros2_2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "xxx" :depends-on ("_package_xxx"))
    (:file "_package_xxx" :depends-on ("_package"))
  ))