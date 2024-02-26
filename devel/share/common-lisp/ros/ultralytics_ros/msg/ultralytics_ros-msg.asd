
(cl:in-package :asdf)

(defsystem "ultralytics_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
               :vision_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox2D" :depends-on ("_package_BoundingBox2D"))
    (:file "_package_BoundingBox2D" :depends-on ("_package"))
    (:file "BoundingBox3D" :depends-on ("_package_BoundingBox3D"))
    (:file "_package_BoundingBox3D" :depends-on ("_package"))
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
    (:file "DetectionArray" :depends-on ("_package_DetectionArray"))
    (:file "_package_DetectionArray" :depends-on ("_package"))
    (:file "KeyPoint2D" :depends-on ("_package_KeyPoint2D"))
    (:file "_package_KeyPoint2D" :depends-on ("_package"))
    (:file "KeyPoint2DArray" :depends-on ("_package_KeyPoint2DArray"))
    (:file "_package_KeyPoint2DArray" :depends-on ("_package"))
    (:file "KeyPoint3D" :depends-on ("_package_KeyPoint3D"))
    (:file "_package_KeyPoint3D" :depends-on ("_package"))
    (:file "KeyPoint3DArray" :depends-on ("_package_KeyPoint3DArray"))
    (:file "_package_KeyPoint3DArray" :depends-on ("_package"))
    (:file "Mask" :depends-on ("_package_Mask"))
    (:file "_package_Mask" :depends-on ("_package"))
    (:file "Point2D" :depends-on ("_package_Point2D"))
    (:file "_package_Point2D" :depends-on ("_package"))
    (:file "Pose2D" :depends-on ("_package_Pose2D"))
    (:file "_package_Pose2D" :depends-on ("_package"))
    (:file "Vector2" :depends-on ("_package_Vector2"))
    (:file "_package_Vector2" :depends-on ("_package"))
    (:file "YoloResult" :depends-on ("_package_YoloResult"))
    (:file "_package_YoloResult" :depends-on ("_package"))
  ))