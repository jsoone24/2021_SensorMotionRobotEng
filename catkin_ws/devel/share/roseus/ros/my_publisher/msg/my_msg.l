;; Auto-generated. Do not edit!


(when (boundp 'my_publisher::my_msg)
  (if (not (find-package "MY_PUBLISHER"))
    (make-package "MY_PUBLISHER"))
  (shadow 'my_msg (find-package "MY_PUBLISHER")))
(unless (find-package "MY_PUBLISHER::MY_MSG")
  (make-package "MY_PUBLISHER::MY_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass my_publisher::my_msg
  :super ros::object
  :slots (_float_data _string_data ))

(defmethod my_publisher::my_msg
  (:init
   (&key
    ((:float_data __float_data) (instance std_msgs::Float32 :init))
    ((:string_data __string_data) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _float_data __float_data)
   (setq _string_data __string_data)
   self)
  (:float_data
   (&rest __float_data)
   (if (keywordp (car __float_data))
       (send* _float_data __float_data)
     (progn
       (if __float_data (setq _float_data (car __float_data)))
       _float_data)))
  (:string_data
   (&rest __string_data)
   (if (keywordp (car __string_data))
       (send* _string_data __string_data)
     (progn
       (if __string_data (setq _string_data (car __string_data)))
       _string_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _float_data
    (send _float_data :serialization-length)
    ;; std_msgs/String _string_data
    (send _string_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _float_data
       (send _float_data :serialize s)
     ;; std_msgs/String _string_data
       (send _string_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _float_data
     (send _float_data :deserialize buf ptr-) (incf ptr- (send _float_data :serialization-length))
   ;; std_msgs/String _string_data
     (send _string_data :deserialize buf ptr-) (incf ptr- (send _string_data :serialization-length))
   ;;
   self)
  )

(setf (get my_publisher::my_msg :md5sum-) "82455cb8167941750708f765e66e4c5e")
(setf (get my_publisher::my_msg :datatype-) "my_publisher/my_msg")
(setf (get my_publisher::my_msg :definition-)
      "std_msgs/Float32 float_data
std_msgs/String string_data
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/String
string data

")



(provide :my_publisher/my_msg "82455cb8167941750708f765e66e4c5e")


