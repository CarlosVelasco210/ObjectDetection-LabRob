;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::Mask)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'Mask (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::MASK")
  (make-package "ULTRALYTICS_ROS::MASK"))

(in-package "ROS")
;;//! \htmlinclude Mask.msg.html


(defclass ultralytics_ros::Mask
  :super ros::object
  :slots (_height _width _data ))

(defmethod ultralytics_ros::Mask
  (:init
   (&key
    ((:height __height) 0)
    ((:width __width) 0)
    ((:data __data) ())
    )
   (send-super :init)
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _data __data)
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
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
    ;; int32 _height
    4
    ;; int32 _width
    4
    ;; ultralytics_ros/Point2D[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _height
       (write-long _height s)
     ;; int32 _width
       (write-long _width s)
     ;; ultralytics_ros/Point2D[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ultralytics_ros/Point2D[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ultralytics_ros::Point2D :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ultralytics_ros::Mask :md5sum-) "c0265cc03cecfba2043d52503f335bb0")
(setf (get ultralytics_ros::Mask :datatype-) "ultralytics_ros/Mask")
(setf (get ultralytics_ros::Mask :definition-)
      "# segmentation mask for one instance

# size of the original image
int32 height
int32 width

# mask data represeted by the points of the border of the mask
ultralytics_ros/Point2D[] data
================================================================================
MSG: ultralytics_ros/Point2D
# 2D point in pixel coordinates

float64 x
float64 y
")



(provide :ultralytics_ros/Mask "c0265cc03cecfba2043d52503f335bb0")


