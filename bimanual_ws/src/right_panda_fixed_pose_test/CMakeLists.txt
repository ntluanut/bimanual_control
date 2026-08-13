cmake_minimum_required(VERSION 3.0.2)

project(right_panda_fixed_pose_test)

find_package(catkin REQUIRED)

catkin_package()

catkin_install_python(
  PROGRAMS
    scripts/save_right_panda_pose.py
    scripts/move_saved_pose_impedance.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
  DIRECTORY
    launch
    config
  DESTINATION
    ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
