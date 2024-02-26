#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wata/LabRob2_ws/src/ros_ur3/ur_gripper_gazebo"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wata/LabRob2_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wata/LabRob2_ws/install/lib/python3/dist-packages:/home/wata/LabRob2_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wata/LabRob2_ws/build" \
    "/usr/bin/python3" \
    "/home/wata/LabRob2_ws/src/ros_ur3/ur_gripper_gazebo/setup.py" \
     \
    build --build-base "/home/wata/LabRob2_ws/build/ros_ur3/ur_gripper_gazebo" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/wata/LabRob2_ws/install" --install-scripts="/home/wata/LabRob2_ws/install/bin"