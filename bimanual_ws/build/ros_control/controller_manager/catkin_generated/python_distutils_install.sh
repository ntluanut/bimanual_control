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

echo_and_run cd "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/ros_control/controller_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/lib/python3/dist-packages:/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build" \
    "/usr/bin/python3" \
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/ros_control/controller_manager/setup.py" \
    egg_info --egg-base /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager \
    build --build-base "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" --install-scripts="/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/bin"
