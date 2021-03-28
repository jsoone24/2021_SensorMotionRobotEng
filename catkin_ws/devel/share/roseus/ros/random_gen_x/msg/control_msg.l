;; Auto-generated. Do not edit!


(when (boundp 'random_gen_x::control_msg)
  (if (not (find-package "RANDOM_GEN_X"))
    (make-package "RANDOM_GEN_X"))
  (shadow 'control_msg (find-package "RANDOM_GEN_X")))
(unless (find-package "RANDOM_GEN_X::CONTROL_MSG")
  (make-package "RANDOM_GEN_X::CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude control_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass random_gen_x::control_msg
  :super ros::object
  :slots (_rand_x _rand_y _rand_yaw ))

(defmethod random_gen_x::control_msg
  (:init
   (&key
    ((:rand_x __rand_x) (instance std_msgs::Float64 :init))
    ((:rand_y __rand_y) (instance std_msgs::Float64 :init))
    ((:rand_yaw __rand_yaw) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _rand_x __rand_x)
   (setq _rand_y __rand_y)
   (setq _rand_yaw __rand_yaw)
   self)
  (:rand_x
   (&rest __rand_x)
   (if (keywordp (car __rand_x))
       (send* _rand_x __rand_x)
     (progn
       (if __rand_x (setq _rand_x (car __rand_x)))
       _rand_x)))
  (:rand_y
   (&rest __rand_y)
   (if (keywordp (car __rand_y))
       (send* _rand_y __rand_y)
     (progn
       (if __rand_y (setq _rand_y (car __rand_y)))
       _rand_y)))
  (:rand_yaw
   (&rest __rand_yaw)
   (if (keywordp (car __rand_yaw))
       (send* _rand_yaw __rand_yaw)
     (progn
       (if __rand_yaw (setq _rand_yaw (car __rand_yaw)))
       _rand_yaw)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _rand_x
    (send _rand_x :serialization-length)
    ;; std_msgs/Float64 _rand_y
    (send _rand_y :serialization-length)
    ;; std_msgs/Float64 _rand_yaw
    (send _rand_yaw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _rand_x
       (send _rand_x :serialize s)
     ;; std_msgs/Float64 _rand_y
       (send _rand_y :serialize s)
     ;; std_msgs/Float64 _rand_yaw
       (send _rand_yaw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _rand_x
     (send _rand_x :deserialize buf ptr-) (incf ptr- (send _rand_x :serialization-length))
   ;; std_msgs/Float64 _rand_y
     (send _rand_y :deserialize buf ptr-) (incf ptr- (send _rand_y :serialization-length))
   ;; std_msgs/Float64 _rand_yaw
     (send _rand_yaw :deserialize buf ptr-) (incf ptr- (send _rand_yaw :serialization-length))
   ;;
   self)
  )

(setf (get random_gen_x::control_msg :md5sum-) "76856e6a7501ff768ebedc7d6ea94795")
(setf (get random_gen_x::control_msg :datatype-) "random_gen_x/control_msg")
(setf (get random_gen_x::control_msg :definition-)
      "std_msgs/Float64 rand_x
std_msgs/Float64 rand_y
std_msgs/Float64 rand_yaw
================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :random_gen_x/control_msg "76856e6a7501ff768ebedc7d6ea94795")


