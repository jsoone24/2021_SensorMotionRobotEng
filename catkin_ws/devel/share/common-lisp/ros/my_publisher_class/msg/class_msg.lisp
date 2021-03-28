; Auto-generated. Do not edit!


(cl:in-package my_publisher_class-msg)


;//! \htmlinclude class_msg.msg.html

(cl:defclass <class_msg> (roslisp-msg-protocol:ros-message)
  ((float_data
    :reader float_data
    :initarg :float_data
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (string_data
    :reader string_data
    :initarg :string_data
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass class_msg (<class_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <class_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'class_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_publisher_class-msg:<class_msg> is deprecated: use my_publisher_class-msg:class_msg instead.")))

(cl:ensure-generic-function 'float_data-val :lambda-list '(m))
(cl:defmethod float_data-val ((m <class_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_publisher_class-msg:float_data-val is deprecated.  Use my_publisher_class-msg:float_data instead.")
  (float_data m))

(cl:ensure-generic-function 'string_data-val :lambda-list '(m))
(cl:defmethod string_data-val ((m <class_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_publisher_class-msg:string_data-val is deprecated.  Use my_publisher_class-msg:string_data instead.")
  (string_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <class_msg>) ostream)
  "Serializes a message object of type '<class_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'float_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'string_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <class_msg>) istream)
  "Deserializes a message object of type '<class_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'float_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'string_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<class_msg>)))
  "Returns string type for a message object of type '<class_msg>"
  "my_publisher_class/class_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'class_msg)))
  "Returns string type for a message object of type 'class_msg"
  "my_publisher_class/class_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<class_msg>)))
  "Returns md5sum for a message object of type '<class_msg>"
  "82455cb8167941750708f765e66e4c5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'class_msg)))
  "Returns md5sum for a message object of type 'class_msg"
  "82455cb8167941750708f765e66e4c5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<class_msg>)))
  "Returns full string definition for message of type '<class_msg>"
  (cl:format cl:nil "std_msgs/Float32 float_data~%std_msgs/String string_data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'class_msg)))
  "Returns full string definition for message of type 'class_msg"
  (cl:format cl:nil "std_msgs/Float32 float_data~%std_msgs/String string_data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <class_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'float_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'string_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <class_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'class_msg
    (cl:cons ':float_data (float_data msg))
    (cl:cons ':string_data (string_data msg))
))
