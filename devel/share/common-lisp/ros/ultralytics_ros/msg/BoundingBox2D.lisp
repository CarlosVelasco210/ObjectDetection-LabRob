; Auto-generated. Do not edit!


(cl:in-package ultralytics_ros-msg)


;//! \htmlinclude BoundingBox2D.msg.html

(cl:defclass <BoundingBox2D> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type ultralytics_ros-msg:Pose2D
    :initform (cl:make-instance 'ultralytics_ros-msg:Pose2D))
   (size
    :reader size
    :initarg :size
    :type ultralytics_ros-msg:Vector2
    :initform (cl:make-instance 'ultralytics_ros-msg:Vector2)))
)

(cl:defclass BoundingBox2D (<BoundingBox2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ultralytics_ros-msg:<BoundingBox2D> is deprecated: use ultralytics_ros-msg:BoundingBox2D instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultralytics_ros-msg:center-val is deprecated.  Use ultralytics_ros-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ultralytics_ros-msg:size-val is deprecated.  Use ultralytics_ros-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox2D>) ostream)
  "Serializes a message object of type '<BoundingBox2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox2D>) istream)
  "Deserializes a message object of type '<BoundingBox2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox2D>)))
  "Returns string type for a message object of type '<BoundingBox2D>"
  "ultralytics_ros/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox2D)))
  "Returns string type for a message object of type 'BoundingBox2D"
  "ultralytics_ros/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox2D>)))
  "Returns md5sum for a message object of type '<BoundingBox2D>"
  "3bfd37eba13978a14efaa97812c78fda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox2D)))
  "Returns md5sum for a message object of type 'BoundingBox2D"
  "3bfd37eba13978a14efaa97812c78fda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox2D>)))
  "Returns full string definition for message of type '<BoundingBox2D>"
  (cl:format cl:nil "# 2D position and orientation of the bounding box center~%ultralytics_ros/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%ultralytics_ros/Vector2 size~%================================================================================~%MSG: ultralytics_ros/Pose2D~%# 2D position in pixel coordinates~%~%ultralytics_ros/Point2D position~%float64 theta~%================================================================================~%MSG: ultralytics_ros/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: ultralytics_ros/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox2D)))
  "Returns full string definition for message of type 'BoundingBox2D"
  (cl:format cl:nil "# 2D position and orientation of the bounding box center~%ultralytics_ros/Pose2D center~%~%# total size of the bounding box, in pixels, surrounding the object's center~%ultralytics_ros/Vector2 size~%================================================================================~%MSG: ultralytics_ros/Pose2D~%# 2D position in pixel coordinates~%~%ultralytics_ros/Point2D position~%float64 theta~%================================================================================~%MSG: ultralytics_ros/Point2D~%# 2D point in pixel coordinates~%~%float64 x~%float64 y~%================================================================================~%MSG: ultralytics_ros/Vector2~%# 2D size in pixel~%~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox2D>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox2D
    (cl:cons ':center (center msg))
    (cl:cons ':size (size msg))
))
