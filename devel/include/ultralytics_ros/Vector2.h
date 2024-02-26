// Generated by gencpp from file ultralytics_ros/Vector2.msg
// DO NOT EDIT!


#ifndef ULTRALYTICS_ROS_MESSAGE_VECTOR2_H
#define ULTRALYTICS_ROS_MESSAGE_VECTOR2_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ultralytics_ros
{
template <class ContainerAllocator>
struct Vector2_
{
  typedef Vector2_<ContainerAllocator> Type;

  Vector2_()
    : x(0.0)
    , y(0.0)  {
    }
  Vector2_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::ultralytics_ros::Vector2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ultralytics_ros::Vector2_<ContainerAllocator> const> ConstPtr;

}; // struct Vector2_

typedef ::ultralytics_ros::Vector2_<std::allocator<void> > Vector2;

typedef boost::shared_ptr< ::ultralytics_ros::Vector2 > Vector2Ptr;
typedef boost::shared_ptr< ::ultralytics_ros::Vector2 const> Vector2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ultralytics_ros::Vector2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ultralytics_ros::Vector2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ultralytics_ros::Vector2_<ContainerAllocator1> & lhs, const ::ultralytics_ros::Vector2_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ultralytics_ros::Vector2_<ContainerAllocator1> & lhs, const ::ultralytics_ros::Vector2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ultralytics_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ultralytics_ros::Vector2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ultralytics_ros::Vector2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ultralytics_ros::Vector2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ultralytics_ros::Vector2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ultralytics_ros::Vector2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ultralytics_ros::Vector2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ultralytics_ros::Vector2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "209f516d3eb691f0663e25cb750d67c1";
  }

  static const char* value(const ::ultralytics_ros::Vector2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x209f516d3eb691f0ULL;
  static const uint64_t static_value2 = 0x663e25cb750d67c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ultralytics_ros::Vector2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ultralytics_ros/Vector2";
  }

  static const char* value(const ::ultralytics_ros::Vector2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ultralytics_ros::Vector2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 2D size in pixel\n"
"\n"
"float64 x\n"
"float64 y\n"
;
  }

  static const char* value(const ::ultralytics_ros::Vector2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ultralytics_ros::Vector2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vector2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ultralytics_ros::Vector2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ultralytics_ros::Vector2_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ULTRALYTICS_ROS_MESSAGE_VECTOR2_H
