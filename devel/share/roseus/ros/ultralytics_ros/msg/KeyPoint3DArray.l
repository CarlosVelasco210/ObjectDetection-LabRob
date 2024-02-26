;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::KeyPoint3DArray)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'KeyPoint3DArray (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::KEYPOINT3DARRAY")
  (make-package "ULTRALYTICS_ROS::KEYPOINT3DARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint3DArray.msg.html


(defclass ultralytics_ros::KeyPoint3DArray
  :super ros::object
  :slots (_data _frame_id ))

(defmethod ultralytics_ros::KeyPoint3DArray
  (:init
   (&key
    ((:data __data) ())
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _data __data)
   (setq _frame_id (string __frame_id))
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; ultralytics_ros/KeyPoint3D[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ultralytics_ros/KeyPoint3D[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ultralytics_ros/KeyPoint3D[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ultralytics_ros::KeyPoint3D :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ultralytics_ros::KeyPoint3DArray :md5sum-) "3fb7359c0337d8b16bcb324732c066fe")
(setf (get ultralytics_ros::KeyPoint3DArray :datatype-) "ultralytics_ros/KeyPoint3DArray")
(setf (get ultralytics_ros::KeyPoint3DArray :definition-)
      "# represents all the keypoints for human pose estimation in meters

ultralytics_ros/KeyPoint3D[] data

# frame reference
string frame_id
================================================================================
MSG: ultralytics_ros/KeyPoint3D
# one keypoint for human pose estimation

# id of the keypoint
int32 id

# 3D point in meters
geometry_msgs/Point point

# conf of the keypoint
float64 score
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :ultralytics_ros/KeyPoint3DArray "3fb7359c0337d8b16bcb324732c066fe")


