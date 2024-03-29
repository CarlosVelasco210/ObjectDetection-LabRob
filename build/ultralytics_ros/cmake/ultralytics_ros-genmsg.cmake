# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ultralytics_ros: 13 messages, 0 services")

set(MSG_I_FLAGS "-Iultralytics_ros:/home/wata/LabRob2_ws/src/ultralytics_ros/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Ivision_msgs:/opt/ros/noetic/share/vision_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ultralytics_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" "std_msgs/Header:vision_msgs/ObjectHypothesisWithPose:vision_msgs/BoundingBox2D:geometry_msgs/PoseWithCovariance:vision_msgs/Detection2DArray:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose2D:sensor_msgs/Image:geometry_msgs/Pose:vision_msgs/Detection2D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" ""
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" "ultralytics_ros/Point2D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" "ultralytics_ros/Point2D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" "ultralytics_ros/Point2D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" "ultralytics_ros/Point2D:ultralytics_ros/Vector2:ultralytics_ros/Pose2D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" "geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" "ultralytics_ros/Pose2D:ultralytics_ros/BoundingBox2D:ultralytics_ros/Point2D:geometry_msgs/Vector3:ultralytics_ros/Mask:ultralytics_ros/KeyPoint3DArray:ultralytics_ros/KeyPoint2DArray:ultralytics_ros/KeyPoint3D:geometry_msgs/Point:geometry_msgs/Quaternion:ultralytics_ros/KeyPoint2D:geometry_msgs/Pose:ultralytics_ros/Vector2:ultralytics_ros/BoundingBox3D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" "std_msgs/Header:ultralytics_ros/Pose2D:ultralytics_ros/BoundingBox2D:ultralytics_ros/Point2D:geometry_msgs/Vector3:ultralytics_ros/Mask:ultralytics_ros/KeyPoint3DArray:ultralytics_ros/KeyPoint2DArray:ultralytics_ros/KeyPoint3D:geometry_msgs/Point:geometry_msgs/Quaternion:ultralytics_ros/KeyPoint2D:geometry_msgs/Pose:ultralytics_ros/Vector2:ultralytics_ros/BoundingBox3D:ultralytics_ros/Detection"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" "ultralytics_ros/Point2D:ultralytics_ros/KeyPoint2D"
)

get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" NAME_WE)
add_custom_target(_ultralytics_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ultralytics_ros" "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" "geometry_msgs/Point:ultralytics_ros/KeyPoint3D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_cpp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(ultralytics_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ultralytics_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ultralytics_ros_generate_messages ultralytics_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_cpp _ultralytics_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ultralytics_ros_gencpp)
add_dependencies(ultralytics_ros_gencpp ultralytics_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ultralytics_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_eus(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(ultralytics_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ultralytics_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ultralytics_ros_generate_messages ultralytics_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_eus _ultralytics_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ultralytics_ros_geneus)
add_dependencies(ultralytics_ros_geneus ultralytics_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ultralytics_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_lisp(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(ultralytics_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ultralytics_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ultralytics_ros_generate_messages ultralytics_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_lisp _ultralytics_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ultralytics_ros_genlisp)
add_dependencies(ultralytics_ros_genlisp ultralytics_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ultralytics_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_nodejs(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ultralytics_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ultralytics_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ultralytics_ros_generate_messages ultralytics_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_nodejs _ultralytics_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ultralytics_ros_gennodejs)
add_dependencies(ultralytics_ros_gennodejs ultralytics_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ultralytics_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2DArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/vision_msgs/cmake/../msg/Detection2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)
_generate_msg_py(ultralytics_ros
  "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
)

### Generating Services

### Generating Module File
_generate_module_py(ultralytics_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ultralytics_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ultralytics_ros_generate_messages ultralytics_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/YoloResult.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Vector2.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Point2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Pose2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Mask.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/Detection.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/DetectionArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint2DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wata/LabRob2_ws/src/ultralytics_ros/msg/KeyPoint3DArray.msg" NAME_WE)
add_dependencies(ultralytics_ros_generate_messages_py _ultralytics_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ultralytics_ros_genpy)
add_dependencies(ultralytics_ros_genpy ultralytics_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ultralytics_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ultralytics_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ultralytics_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ultralytics_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET vision_msgs_generate_messages_cpp)
  add_dependencies(ultralytics_ros_generate_messages_cpp vision_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ultralytics_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ultralytics_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ultralytics_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET vision_msgs_generate_messages_eus)
  add_dependencies(ultralytics_ros_generate_messages_eus vision_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ultralytics_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ultralytics_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ultralytics_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET vision_msgs_generate_messages_lisp)
  add_dependencies(ultralytics_ros_generate_messages_lisp vision_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ultralytics_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ultralytics_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ultralytics_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET vision_msgs_generate_messages_nodejs)
  add_dependencies(ultralytics_ros_generate_messages_nodejs vision_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ultralytics_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ultralytics_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ultralytics_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET vision_msgs_generate_messages_py)
  add_dependencies(ultralytics_ros_generate_messages_py vision_msgs_generate_messages_py)
endif()
