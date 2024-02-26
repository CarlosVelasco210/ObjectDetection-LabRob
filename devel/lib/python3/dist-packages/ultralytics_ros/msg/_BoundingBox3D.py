# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ultralytics_ros/BoundingBox3D.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class BoundingBox3D(genpy.Message):
  _md5sum = "b045199f72d6e96850587d8e00eb6c5b"
  _type = "ultralytics_ros/BoundingBox3D"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# 3D position and orientation of the bounding box center
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
float64 z"""
  __slots__ = ['center','size','frame_id']
  _slot_types = ['geometry_msgs/Pose','geometry_msgs/Vector3','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       center,size,frame_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BoundingBox3D, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.center is None:
        self.center = geometry_msgs.msg.Pose()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.frame_id is None:
        self.frame_id = ''
    else:
      self.center = geometry_msgs.msg.Pose()
      self.size = geometry_msgs.msg.Vector3()
      self.frame_id = ''

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
      buff.write(_get_struct_10d().pack(_x.center.position.x, _x.center.position.y, _x.center.position.z, _x.center.orientation.x, _x.center.orientation.y, _x.center.orientation.z, _x.center.orientation.w, _x.size.x, _x.size.y, _x.size.z))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
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
      if self.center is None:
        self.center = geometry_msgs.msg.Pose()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 80
      (_x.center.position.x, _x.center.position.y, _x.center.position.z, _x.center.orientation.x, _x.center.orientation.y, _x.center.orientation.z, _x.center.orientation.w, _x.size.x, _x.size.y, _x.size.z,) = _get_struct_10d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frame_id = str[start:end]
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
      buff.write(_get_struct_10d().pack(_x.center.position.x, _x.center.position.y, _x.center.position.z, _x.center.orientation.x, _x.center.orientation.y, _x.center.orientation.z, _x.center.orientation.w, _x.size.x, _x.size.y, _x.size.z))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
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
      if self.center is None:
        self.center = geometry_msgs.msg.Pose()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 80
      (_x.center.position.x, _x.center.position.y, _x.center.position.z, _x.center.orientation.x, _x.center.orientation.y, _x.center.orientation.z, _x.center.orientation.w, _x.size.x, _x.size.y, _x.size.z,) = _get_struct_10d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.frame_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10d = None
def _get_struct_10d():
    global _struct_10d
    if _struct_10d is None:
        _struct_10d = struct.Struct("<10d")
    return _struct_10d
