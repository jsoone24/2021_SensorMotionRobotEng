; Auto-generated. Do not edit!


(cl:in-package random_gen_x-msg)


;//! \htmlinclude control_msg.msg.html

(cl:defclass <control_msg> (roslisp-msg-protocol:ros-message)
  ((rand_x
    :reader rand_x
    :initarg :rand_x
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (rand_y
    :reader rand_y
    :initarg :rand_y
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (rand_yaw
    :reader rand_yaw
    :initarg :rand_yaw
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass control_msg (<control_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name random_gen_x-msg:<control_msg> is deprecated: use random_gen_x-msg:control_msg instead.")))

(cl:ensure-generic-function 'rand_x-val :lambda-list '(m))
(cl:defmethod rand_x-val ((m <control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader random_gen_x-msg:rand_x-val is deprecated.  Use random_gen_x-msg:rand_x instead.")
  (rand_x m))

(cl:ensure-generic-function 'rand_y-val :lambda-list '(m))
(cl:defmethod rand_y-val ((m <control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader random_gen_x-msg:rand_y-val is deprecated.  Use random_gen_x-msg:rand_y instead.")
  (rand_y m))

(cl:ensure-generic-function 'rand_yaw-val :lambda-list '(m))
(cl:defmethod rand_yaw-val ((m <control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader random_gen_x-msg:rand_yaw-val is deprecated.  Use random_gen_x-msg:rand_yaw instead.")
  (rand_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_msg>) ostream)
  "Serializes a message object of type '<control_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rand_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rand_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rand_yaw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_msg>) istream)
  "Deserializes a message object of type '<control_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rand_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rand_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rand_yaw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_msg>)))
  "Returns string type for a message object of type '<control_msg>"
  "random_gen_x/control_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_msg)))
  "Returns string type for a message object of type 'control_msg"
  "random_gen_x/control_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_msg>)))
  "Returns md5sum for a message object of type '<control_msg>"
  "76856e6a7501ff768ebedc7d6ea94795")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_msg)))
  "Returns md5sum for a message object of type 'control_msg"
  "76856e6a7501ff768ebedc7d6ea94795")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_msg>)))
  "Returns full string definition for message of type '<control_msg>"
  (cl:format cl:nil "std_msgs/Float64 rand_x~%std_msgs/Float64 rand_y~%std_msgs/Float64 rand_yaw~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_msg)))
  "Returns full string definition for message of type 'control_msg"
  (cl:format cl:nil "std_msgs/Float64 rand_x~%std_msgs/Float64 rand_y~%std_msgs/Float64 rand_yaw~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rand_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rand_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rand_yaw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'control_msg
    (cl:cons ':rand_x (rand_x msg))
    (cl:cons ':rand_y (rand_y msg))
    (cl:cons ':rand_yaw (rand_yaw msg))
))
