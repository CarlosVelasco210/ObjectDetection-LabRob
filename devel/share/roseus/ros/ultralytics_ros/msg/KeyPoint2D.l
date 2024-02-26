;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::KeyPoint2D)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'KeyPoint2D (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::KEYPOINT2D")
  (make-package "ULTRALYTICS_ROS::KEYPOINT2D"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint2D.msg.html


(defclass ultralytics_ros::KeyPoint2D
  :super ros::object
  :slots (_id _point _score ))

(defmethod ultralytics_ros::KeyPoint2D
  (:init
   (&key
    ((:id __id) 0)
    ((:point __point) (instance ultralytics_ros::Point2D :init))
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _point __point)
   (setq _score (float __score))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; ultralytics_ros/Point2D _point
    (send _point :serialization-length)
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; ultralytics_ros/Point2D _point
       (send _point :serialize s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ultralytics_ros/Point2D _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ultralytics_ros::KeyPoint2D :md5sum-) "88de9a841f74ce6110d631408b064ab7")
(setf (get ultralytics_ros::KeyPoint2D :datatype-) "ultralytics_ros/KeyPoint2D")
(setf (get ultralytics_ros::KeyPoint2D :definition-)
      "# one keypoint for human pose estimation

# id of the keypoint
int32 id

# 2D point in pixels
ultralytics_ros/Point2D point

# conf of the keypoint
float64 score
================================================================================
MSG: ultralytics_ros/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
")



(provide :ultralytics_ros/KeyPoint2D "88de9a841f74ce6110d631408b064ab7")


