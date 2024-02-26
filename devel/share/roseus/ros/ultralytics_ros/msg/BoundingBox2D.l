;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::BoundingBox2D)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'BoundingBox2D (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::BOUNDINGBOX2D")
  (make-package "ULTRALYTICS_ROS::BOUNDINGBOX2D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox2D.msg.html


(defclass ultralytics_ros::BoundingBox2D
  :super ros::object
  :slots (_center _size ))

(defmethod ultralytics_ros::BoundingBox2D
  (:init
   (&key
    ((:center __center) (instance ultralytics_ros::Pose2D :init))
    ((:size __size) (instance ultralytics_ros::Vector2 :init))
    )
   (send-super :init)
   (setq _center __center)
   (setq _size __size)
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:serialization-length
   ()
   (+
    ;; ultralytics_ros/Pose2D _center
    (send _center :serialization-length)
    ;; ultralytics_ros/Vector2 _size
    (send _size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ultralytics_ros/Pose2D _center
       (send _center :serialize s)
     ;; ultralytics_ros/Vector2 _size
       (send _size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ultralytics_ros/Pose2D _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; ultralytics_ros/Vector2 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;;
   self)
  )

(setf (get ultralytics_ros::BoundingBox2D :md5sum-) "3bfd37eba13978a14efaa97812c78fda")
(setf (get ultralytics_ros::BoundingBox2D :datatype-) "ultralytics_ros/BoundingBox2D")
(setf (get ultralytics_ros::BoundingBox2D :definition-)
      "# 2D position and orientation of the bounding box center
ultralytics_ros/Pose2D center

# total size of the bounding box, in pixels, surrounding the object's center
ultralytics_ros/Vector2 size
================================================================================
MSG: ultralytics_ros/Pose2D
# 2D position in pixel coordinates

ultralytics_ros/Point2D position
float64 theta
================================================================================
MSG: ultralytics_ros/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
================================================================================
MSG: ultralytics_ros/Vector2
# 2D size in pixel

float64 x
float64 y
")



(provide :ultralytics_ros/BoundingBox2D "3bfd37eba13978a14efaa97812c78fda")


