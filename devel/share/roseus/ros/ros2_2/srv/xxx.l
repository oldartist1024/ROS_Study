;; Auto-generated. Do not edit!


(when (boundp 'ros2_2::xxx)
  (if (not (find-package "ROS2_2"))
    (make-package "ROS2_2"))
  (shadow 'xxx (find-package "ROS2_2")))
(unless (find-package "ROS2_2::XXX")
  (make-package "ROS2_2::XXX"))
(unless (find-package "ROS2_2::XXXREQUEST")
  (make-package "ROS2_2::XXXREQUEST"))
(unless (find-package "ROS2_2::XXXRESPONSE")
  (make-package "ROS2_2::XXXRESPONSE"))

(in-package "ROS")





(defclass ros2_2::xxxRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod ros2_2::xxxRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros2_2::xxxResponse
  :super ros::object
  :slots (_sum ))

(defmethod ros2_2::xxxResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros2_2::xxx
  :super ros::object
  :slots ())

(setf (get ros2_2::xxx :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ros2_2::xxx :datatype-) "ros2_2/xxx")
(setf (get ros2_2::xxx :request) ros2_2::xxxRequest)
(setf (get ros2_2::xxx :response) ros2_2::xxxResponse)

(defmethod ros2_2::xxxRequest
  (:response () (instance ros2_2::xxxResponse :init)))

(setf (get ros2_2::xxxRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ros2_2::xxxRequest :datatype-) "ros2_2/xxxRequest")
(setf (get ros2_2::xxxRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum
")

(setf (get ros2_2::xxxResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get ros2_2::xxxResponse :datatype-) "ros2_2/xxxResponse")
(setf (get ros2_2::xxxResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum
")



(provide :ros2_2/xxx "4781436a0c2affec8025955a6041e481")


