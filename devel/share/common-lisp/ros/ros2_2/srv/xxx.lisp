; Auto-generated. Do not edit!


(cl:in-package ros2_2-srv)


;//! \htmlinclude xxx-request.msg.html

(cl:defclass <xxx-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass xxx-request (<xxx-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xxx-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xxx-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros2_2-srv:<xxx-request> is deprecated: use ros2_2-srv:xxx-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <xxx-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros2_2-srv:num1-val is deprecated.  Use ros2_2-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <xxx-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros2_2-srv:num2-val is deprecated.  Use ros2_2-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xxx-request>) ostream)
  "Serializes a message object of type '<xxx-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xxx-request>) istream)
  "Deserializes a message object of type '<xxx-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xxx-request>)))
  "Returns string type for a service object of type '<xxx-request>"
  "ros2_2/xxxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xxx-request)))
  "Returns string type for a service object of type 'xxx-request"
  "ros2_2/xxxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xxx-request>)))
  "Returns md5sum for a message object of type '<xxx-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xxx-request)))
  "Returns md5sum for a message object of type 'xxx-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xxx-request>)))
  "Returns full string definition for message of type '<xxx-request>"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xxx-request)))
  "Returns full string definition for message of type 'xxx-request"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xxx-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xxx-request>))
  "Converts a ROS message object to a list"
  (cl:list 'xxx-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude xxx-response.msg.html

(cl:defclass <xxx-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass xxx-response (<xxx-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xxx-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xxx-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros2_2-srv:<xxx-response> is deprecated: use ros2_2-srv:xxx-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <xxx-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros2_2-srv:sum-val is deprecated.  Use ros2_2-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xxx-response>) ostream)
  "Serializes a message object of type '<xxx-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xxx-response>) istream)
  "Deserializes a message object of type '<xxx-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xxx-response>)))
  "Returns string type for a service object of type '<xxx-response>"
  "ros2_2/xxxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xxx-response)))
  "Returns string type for a service object of type 'xxx-response"
  "ros2_2/xxxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xxx-response>)))
  "Returns md5sum for a message object of type '<xxx-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xxx-response)))
  "Returns md5sum for a message object of type 'xxx-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xxx-response>)))
  "Returns full string definition for message of type '<xxx-response>"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xxx-response)))
  "Returns full string definition for message of type 'xxx-response"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xxx-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xxx-response>))
  "Converts a ROS message object to a list"
  (cl:list 'xxx-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'xxx)))
  'xxx-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'xxx)))
  'xxx-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xxx)))
  "Returns string type for a service object of type '<xxx>"
  "ros2_2/xxx")