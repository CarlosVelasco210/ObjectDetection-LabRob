# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ultralytics_ros/YoloResult.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import sensor_msgs.msg
import std_msgs.msg
import vision_msgs.msg

class YoloResult(genpy.Message):
  _md5sum = "1d3fa337e61f24dea5e6daf34d71b96f"
  _type = "ultralytics_ros/YoloResult"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
vision_msgs/Detection2DArray detections
sensor_msgs/Image[] masks

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
MSG: vision_msgs/Detection2DArray
# A list of 2D detections, for a multi-object 2D detector.

Header header

# A list of the detected proposals. A multi-proposal detector might generate
#   this list with many candidate detections generated from a single input.
Detection2D[] detections

================================================================================
MSG: vision_msgs/Detection2D
# Defines a 2D detection result.
#
# This is similar to a 2D classification, but includes position information,
#   allowing a classification result for a specific crop or image point to
#   to be located in the larger image.

Header header

# Class probabilities
ObjectHypothesisWithPose[] results

# 2D bounding box surrounding the object.
BoundingBox2D bbox

# The 2D data that generated these results (i.e. region proposal cropped out of
#   the image). Not required for all use cases, so it may be empty.
sensor_msgs/Image source_img

================================================================================
MSG: vision_msgs/ObjectHypothesisWithPose
# An object hypothesis that contains position information.

# The unique numeric ID of object detected. To get additional information about
#   this ID, such as its human-readable name, listeners should perform a lookup
#   in a metadata database. See vision_msgs/VisionInfo.msg for more detail.
int64 id

# The probability or confidence value of the detected object. By convention,
#   this value should lie in the range [0-1].
float64 score

# The 6D pose of the object hypothesis. This pose should be
#   defined as the pose of some fixed reference point on the object, such a
#   the geometric center of the bounding box or the center of mass of the
#   object.
# Note that this pose is not stamped; frame information can be defined by
#   parent messages.
# Also note that different classes predicted for the same input data may have
#   different predicted 6D poses.
geometry_msgs/PoseWithCovariance pose
================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
MSG: vision_msgs/BoundingBox2D
# A 2D bounding box that can be rotated about its center.
# All dimensions are in pixels, but represented using floating-point
#   values to allow sub-pixel precision. If an exact pixel crop is required
#   for a rotated bounding box, it can be calculated using Bresenham's line
#   algorithm.

# The 2D position (in pixels) and orientation of the bounding box center.
geometry_msgs/Pose2D center

# The size (in pixels) of the bounding box surrounding the object relative
#   to the pose of its center.
float64 size_x
float64 size_y

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)
"""
  __slots__ = ['header','detections','masks']
  _slot_types = ['std_msgs/Header','vision_msgs/Detection2DArray','sensor_msgs/Image[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,detections,masks

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(YoloResult, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.detections is None:
        self.detections = vision_msgs.msg.Detection2DArray()
      if self.masks is None:
        self.masks = []
    else:
      self.header = std_msgs.msg.Header()
      self.detections = vision_msgs.msg.Detection2DArray()
      self.masks = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.detections.header.seq, _x.detections.header.stamp.secs, _x.detections.header.stamp.nsecs))
      _x = self.detections.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.detections.detections)
      buff.write(_struct_I.pack(length))
      for val1 in self.detections.detections:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.results)
        buff.write(_struct_I.pack(length))
        for val2 in val1.results:
          _x = val2
          buff.write(_get_struct_qd().pack(_x.id, _x.score))
          _v3 = val2.pose
          _v4 = _v3.pose
          _v5 = _v4.position
          _x = _v5
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v6 = _v4.orientation
          _x = _v6
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          buff.write(_get_struct_36d().pack(*_v3.covariance))
        _v7 = val1.bbox
        _v8 = _v7.center
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        _x = _v7
        buff.write(_get_struct_2d().pack(_x.size_x, _x.size_y))
        _v9 = val1.source_img
        _v10 = _v9.header
        _x = _v10.seq
        buff.write(_get_struct_I().pack(_x))
        _v11 = _v10.stamp
        _x = _v11
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v10.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v9
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = _v9.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v9
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = _v9.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.masks)
      buff.write(_struct_I.pack(length))
      for val1 in self.masks:
        _v12 = val1.header
        _x = _v12.seq
        buff.write(_get_struct_I().pack(_x))
        _v13 = _v12.stamp
        _x = _v13
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v12.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = val1.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = val1.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.detections is None:
        self.detections = vision_msgs.msg.Detection2DArray()
      if self.masks is None:
        self.masks = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.detections.header.seq, _x.detections.header.stamp.secs, _x.detections.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.detections.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.detections.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.detections.detections = []
      for i in range(0, length):
        val1 = vision_msgs.msg.Detection2D()
        _v14 = val1.header
        start = end
        end += 4
        (_v14.seq,) = _get_struct_I().unpack(str[start:end])
        _v15 = _v14.stamp
        _x = _v15
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v14.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v14.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.results = []
        for i in range(0, length):
          val2 = vision_msgs.msg.ObjectHypothesisWithPose()
          _x = val2
          start = end
          end += 16
          (_x.id, _x.score,) = _get_struct_qd().unpack(str[start:end])
          _v16 = val2.pose
          _v17 = _v16.pose
          _v18 = _v17.position
          _x = _v18
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v19 = _v17.orientation
          _x = _v19
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          start = end
          end += 288
          _v16.covariance = _get_struct_36d().unpack(str[start:end])
          val1.results.append(val2)
        _v20 = val1.bbox
        _v21 = _v20.center
        _x = _v21
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        _x = _v20
        start = end
        end += 16
        (_x.size_x, _x.size_y,) = _get_struct_2d().unpack(str[start:end])
        _v22 = val1.source_img
        _v23 = _v22.header
        start = end
        end += 4
        (_v23.seq,) = _get_struct_I().unpack(str[start:end])
        _v24 = _v23.stamp
        _x = _v24
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v23.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v23.frame_id = str[start:end]
        _x = _v22
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v22.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v22.encoding = str[start:end]
        _x = _v22
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v22.data = str[start:end]
        self.detections.detections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.masks = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.Image()
        _v25 = val1.header
        start = end
        end += 4
        (_v25.seq,) = _get_struct_I().unpack(str[start:end])
        _v26 = _v25.stamp
        _x = _v26
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v25.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v25.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.encoding = str[start:end]
        _x = val1
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        val1.data = str[start:end]
        self.masks.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.detections.header.seq, _x.detections.header.stamp.secs, _x.detections.header.stamp.nsecs))
      _x = self.detections.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.detections.detections)
      buff.write(_struct_I.pack(length))
      for val1 in self.detections.detections:
        _v27 = val1.header
        _x = _v27.seq
        buff.write(_get_struct_I().pack(_x))
        _v28 = _v27.stamp
        _x = _v28
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v27.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.results)
        buff.write(_struct_I.pack(length))
        for val2 in val1.results:
          _x = val2
          buff.write(_get_struct_qd().pack(_x.id, _x.score))
          _v29 = val2.pose
          _v30 = _v29.pose
          _v31 = _v30.position
          _x = _v31
          buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v32 = _v30.orientation
          _x = _v32
          buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          buff.write(_v29.covariance.tostring())
        _v33 = val1.bbox
        _v34 = _v33.center
        _x = _v34
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
        _x = _v33
        buff.write(_get_struct_2d().pack(_x.size_x, _x.size_y))
        _v35 = val1.source_img
        _v36 = _v35.header
        _x = _v36.seq
        buff.write(_get_struct_I().pack(_x))
        _v37 = _v36.stamp
        _x = _v37
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v36.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v35
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = _v35.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v35
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = _v35.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.masks)
      buff.write(_struct_I.pack(length))
      for val1 in self.masks:
        _v38 = val1.header
        _x = _v38.seq
        buff.write(_get_struct_I().pack(_x))
        _v39 = _v38.stamp
        _x = _v39
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v38.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = val1.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = val1.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.detections is None:
        self.detections = vision_msgs.msg.Detection2DArray()
      if self.masks is None:
        self.masks = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.detections.header.seq, _x.detections.header.stamp.secs, _x.detections.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.detections.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.detections.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.detections.detections = []
      for i in range(0, length):
        val1 = vision_msgs.msg.Detection2D()
        _v40 = val1.header
        start = end
        end += 4
        (_v40.seq,) = _get_struct_I().unpack(str[start:end])
        _v41 = _v40.stamp
        _x = _v41
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v40.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v40.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.results = []
        for i in range(0, length):
          val2 = vision_msgs.msg.ObjectHypothesisWithPose()
          _x = val2
          start = end
          end += 16
          (_x.id, _x.score,) = _get_struct_qd().unpack(str[start:end])
          _v42 = val2.pose
          _v43 = _v42.pose
          _v44 = _v43.position
          _x = _v44
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
          _v45 = _v43.orientation
          _x = _v45
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
          start = end
          end += 288
          _v42.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
          val1.results.append(val2)
        _v46 = val1.bbox
        _v47 = _v46.center
        _x = _v47
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        _x = _v46
        start = end
        end += 16
        (_x.size_x, _x.size_y,) = _get_struct_2d().unpack(str[start:end])
        _v48 = val1.source_img
        _v49 = _v48.header
        start = end
        end += 4
        (_v49.seq,) = _get_struct_I().unpack(str[start:end])
        _v50 = _v49.stamp
        _x = _v50
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v49.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v49.frame_id = str[start:end]
        _x = _v48
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v48.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v48.encoding = str[start:end]
        _x = _v48
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v48.data = str[start:end]
        self.detections.detections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.masks = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.Image()
        _v51 = val1.header
        start = end
        end += 4
        (_v51.seq,) = _get_struct_I().unpack(str[start:end])
        _v52 = _v51.stamp
        _x = _v52
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v51.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v51.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.encoding = str[start:end]
        _x = val1
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        val1.data = str[start:end]
        self.masks.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
_struct_qd = None
def _get_struct_qd():
    global _struct_qd
    if _struct_qd is None:
        _struct_qd = struct.Struct("<qd")
    return _struct_qd