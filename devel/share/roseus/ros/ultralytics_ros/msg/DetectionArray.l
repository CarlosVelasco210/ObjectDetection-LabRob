;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::DetectionArray)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'DetectionArray (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::DETECTIONARRAY")
  (make-package "ULTRALYTICS_ROS::DETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ultralytics_ros::DetectionArray
  :super ros::object
  :slots (_header _detections ))

(defmethod ultralytics_ros::DetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ultralytics_ros/Detection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ultralytics_ros/Detection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ultralytics_ros/Detection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance ultralytics_ros::Detection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ultralytics_ros::DetectionArray :md5sum-) "a083f705d50596d301a4f958a078d859")
(setf (get ultralytics_ros::DetectionArray :datatype-) "ultralytics_ros/DetectionArray")
(setf (get ultralytics_ros::DetectionArray :definition-)
      "# represents all YOLOv8 detections in one frame

std_msgs/Header header
ultralytics_ros/Detection[] detections
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ultralytics_ros/Detection
# defines a YOLOv8 detection result

# class probability
int32 class_id
string class_name
float64 score

# ID for tracking
string id

# 2D bounding box surrounding the object in pixels
ultralytics_ros/BoundingBox2D bbox

# 3D bounding box surrounding the object in meters
ultralytics_ros/BoundingBox3D bbox3d

# segmentation mask of the detected object
# it is only the boundary of the segmented object
ultralytics_ros/Mask mask

# keypoints for human pose estimation
ultralytics_ros/KeyPoint2DArray keypoints

# keypoints for human pose estimation
ultralytics_ros/KeyPoint3DArray keypoints3d
================================================================================
MSG: ultralytics_ros/BoundingBox2D
# 2D position and orientation of the bounding box center
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
================================================================================
MSG: ultralytics_ros/BoundingBox3D
# 3D position and orientation of the bounding box center
geometry_msgs/Pose center

# total size of the bounding box, in meters, surrounding the object's center
geometry_msgs/Vector3 size

# frame reference
string frame_id
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: ultralytics_ros/Mask
# segmentation mask for one instance

# size of the original image
int32 height
int32 width

# mask data represeted by the points of the border of the mask
ultralytics_ros/Point2D[] data
================================================================================
MSG: ultralytics_ros/KeyPoint2DArray
# represents all the keypoints for human pose estimation

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
MSG: ultralytics_ros/KeyPoint3DArray
# represents all the keypoints for human pose estimation in meters

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
")



(provide :ultralytics_ros/DetectionArray "a083f705d50596d301a4f958a078d859")


