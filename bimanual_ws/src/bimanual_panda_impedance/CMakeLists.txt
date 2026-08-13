cmake_minimum_required(VERSION 3.0.2)

project(bimanual_panda_impedance)

find_package(catkin REQUIRED)

catkin_package()

catkin_install_python(
  PROGRAMS
    scripts/save_dual_center_pose.py
    scripts/move_dual_center_pose.py
    scripts/check_dual_setup.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
  DIRECTORY
    launch
    config
  DESTINATION
    ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
