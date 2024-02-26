;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::KeyPoint2DArray)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'KeyPoint2DArray (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::KEYPOINT2DARRAY")
  (make-package "ULTRALYTICS_ROS::KEYPOINT2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint2DArray.msg.html


(defclass ultralytics_ros::KeyPoint2DArray
  :super ros::object
  :slots (_data ))

(defmethod ultralytics_ros::KeyPoint2DArray
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; ultralytics_ros/KeyPoint2D[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ultralytics_ros/KeyPoint2D[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ultralytics_ros/KeyPoint2D[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ultralytics_ros::KeyPoint2D :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ultralytics_ros::KeyPoint2DArray :md5sum-) "c319c71fb3a0d705740c7312436635df")
(setf (get ultralytics_ros::KeyPoint2DArray :datatype-) "ultralytics_ros/KeyPoint2DArray")
(setf (get ultralytics_ros::KeyPoint2DArray :definition-)
      "# represents all the keypoints for human pose estimation

ultralytics_ros/KeyPoint2D[] data
================================================================================
MSG: ultralytics_ros/KeyPoint2D
# one keypoint for human pose estimation

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



(provide :ultralytics_ros/KeyPoint2DArray "c319c71fb3a0d705740c7312436635df")


