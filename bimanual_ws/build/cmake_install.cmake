# Install script for directory: /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE PROGRAM FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE PROGRAM FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/setup.bash;/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/setup.bash"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/setup.sh;/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/setup.sh"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/setup.zsh;/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/setup.zsh"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/setup.fish;/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/local_setup.fish")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/setup.fish"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/local_setup.fish"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/gtest/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/bimanual_panda_impedance/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros/franka_ros/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_pkgs/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/right_panda_fixed_pose_test/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/ros_control/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/ros_controllers/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros/franka_description/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/rqt_controller_manager/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/rqt_joint_trajectory_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager_msgs/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros/franka_msgs/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_msgs/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/hardware_interface/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/combined_robot_hw/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_interface/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/boost_sml/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager_tests/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/combined_robot_hw_tests/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/force_torque_sensor_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/forward_command_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/position_controllers/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros/franka_gripper/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/imu_sensor_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/joint_state_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/transmission_interface/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/gripper_action_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/joint_limits_interface/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_control/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_mocap_plugin/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_sensors/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_laser/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/velocity_controllers/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/effort_controllers/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros/franka_hw/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros/franka_example_controllers/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/franka_ros_mujoco/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_controllers/joint_trajectory_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/left_panda_bottle_pose_controller/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/left_panda_fixed_pose_test/cmake_install.cmake")
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/panda_bottle_pose_controller/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
