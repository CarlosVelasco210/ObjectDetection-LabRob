;; Auto-generated. Do not edit!


(when (boundp 'ultralytics_ros::Detection)
  (if (not (find-package "ULTRALYTICS_ROS"))
    (make-package "ULTRALYTICS_ROS"))
  (shadow 'Detection (find-package "ULTRALYTICS_ROS")))
(unless (find-package "ULTRALYTICS_ROS::DETECTION")
  (make-package "ULTRALYTICS_ROS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html


(defclass ultralytics_ros::Detection
  :super ros::object
  :slots (_class_id _class_name _score _id _bbox _bbox3d _mask _keypoints _keypoints3d ))

(defmethod ultralytics_ros::Detection
  (:init
   (&key
    ((:class_id __class_id) 0)
    ((:class_name __class_name) "")
    ((:score __score) 0.0)
    ((:id __id) "")
    ((:bbox __bbox) (instance ultralytics_ros::BoundingBox2D :init))
    ((:bbox3d __bbox3d) (instance ultralytics_ros::BoundingBox3D :init))
    ((:mask __mask) (instance ultralytics_ros::Mask :init))
    ((:keypoints __keypoints) (instance ultralytics_ros::KeyPoint2DArray :init))
    ((:keypoints3d __keypoints3d) (instance ultralytics_ros::KeyPoint3DArray :init))
    )
   (send-super :init)
   (setq _class_id (round __class_id))
   (setq _class_name (string __class_name))
   (setq _score (float __score))
   (setq _id (string __id))
   (setq _bbox __bbox)
   (setq _bbox3d __bbox3d)
   (setq _mask __mask)
   (setq _keypoints __keypoints)
   (setq _keypoints3d __keypoints3d)
   self)
  (:class_id
   (&optional __class_id)
   (if __class_id (setq _class_id __class_id)) _class_id)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:bbox
   (&rest __bbox)
   (if (keywordp (car __bbox))
       (send* _bbox __bbox)
     (progn
       (if __bbox (setq _bbox (car __bbox)))
       _bbox)))
  (:bbox3d
   (&rest __bbox3d)
   (if (keywordp (car __bbox3d))
       (send* _bbox3d __bbox3d)
     (progn
       (if __bbox3d (setq _bbox3d (car __bbox3d)))
       _bbox3d)))
  (:mask
   (&rest __mask)
   (if (keywordp (car __mask))
       (send* _mask __mask)
     (progn
       (if __mask (setq _mask (car __mask)))
       _mask)))
  (:keypoints
   (&rest __keypoints)
   (if (keywordp (car __keypoints))
       (send* _keypoints __keypoints)
     (progn
       (if __keypoints (setq _keypoints (car __keypoints)))
       _keypoints)))
  (:keypoints3d
   (&rest __keypoints3d)
   (if (keywordp (car __keypoints3d))
       (send* _keypoints3d __keypoints3d)
     (progn
       (if __keypoints3d (setq _keypoints3d (car __keypoints3d)))
       _keypoints3d)))
  (:serialization-length
   ()
   (+
    ;; int32 _class_id
    4
    ;; string _class_name
    4 (length _class_name)
    ;; float64 _score
    8
    ;; string _id
    4 (length _id)
    ;; ultralytics_ros/BoundingBox2D _bbox
    (send _bbox :serialization-length)
    ;; ultralytics_ros/BoundingBox3D _bbox3d
    (send _bbox3d :serialization-length)
    ;; ultralytics_ros/Mask _mask
    (send _mask :serialization-length)
    ;; ultralytics_ros/KeyPoint2DArray _keypoints
    (send _keypoints :serialization-length)
    ;; ultralytics_ros/KeyPoint3DArray _keypoints3d
    (send _keypoints3d :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _class_id
       (write-long _class_id s)
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; ultralytics_ros/BoundingBox2D _bbox
       (send _bbox :serialize s)
     ;; ultralytics_ros/BoundingBox3D _bbox3d
       (send _bbox3d :serialize s)
     ;; ultralytics_ros/Mask _mask
       (send _mask :serialize s)
     ;; ultralytics_ros/KeyPoint2DArray _keypoints
       (send _keypoints :serialize s)
     ;; ultralytics_ros/KeyPoint3DArray _keypoints3d
       (send _keypoints3d :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _class_id
     (setq _class_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ultralytics_ros/BoundingBox2D _bbox
     (send _bbox :deserialize buf ptr-) (incf ptr- (send _bbox :serialization-length))
   ;; ultralytics_ros/BoundingBox3D _bbox3d
     (send _bbox3d :deserialize buf ptr-) (incf ptr- (send _bbox3d :serialization-length))
   ;; ultralytics_ros/Mask _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;; ultralytics_ros/KeyPoint2DArray _keypoints
     (send _keypoints :deserialize buf ptr-) (incf ptr- (send _keypoints :serialization-length))
   ;; ultralytics_ros/KeyPoint3DArray _keypoints3d
     (send _keypoints3d :deserialize buf ptr-) (incf ptr- (send _keypoints3d :serialization-length))
   ;;
   self)
  )

(setf (get ultralytics_ros::Detection :md5sum-) "75aaa3585144062576cc0dbc54c63a0f")
(setf (get ultralytics_ros::Detection :datatype-) "ultralytics_ros/Detection")
(setf (get ultralytics_ros::Detection :definition-)
      "# defines a YOLOv8 detection result

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



(provide :ultralytics_ros/Detection "75aaa3585144062576cc0dbc54c63a0f")

