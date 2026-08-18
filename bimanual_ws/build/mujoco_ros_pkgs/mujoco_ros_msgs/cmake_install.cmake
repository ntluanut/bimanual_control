# Install script for directory: /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/StateUint.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/ScalarStamped.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/BodyState.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/GeomProperties.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/GeomType.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/SensorNoiseModel.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/SolverParameters.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/MocapState.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/EqualityConstraintParameters.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/EqualityConstraintType.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/SimInfo.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/msg/PluginStats.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/srv" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetStateUint.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetFloat.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetPause.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetBodyState.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetBodyState.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetGeomProperties.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetGeomProperties.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetEqualityConstraintParameters.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetEqualityConstraintParameters.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/ResetBodyQPos.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/RegisterSensorNoiseModels.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetGravity.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetGravity.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/Reload.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/SetMocapState.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetSimInfo.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/srv/GetPluginStats.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/action" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/action/Step.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepAction.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepActionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepActionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepActionFeedback.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/mujoco_ros_msgs/msg/StepFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/cmake" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_msgs/catkin_generated/installspace/mujoco_ros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/include/mujoco_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/roseus/ros/mujoco_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/common-lisp/ros/mujoco_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/gennodejs/ros/mujoco_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/mujoco_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/mujoco_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_msgs/catkin_generated/installspace/mujoco_ros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/cmake" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_msgs/catkin_generated/installspace/mujoco_ros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs/cmake" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_msgs/catkin_generated/installspace/mujoco_ros_msgsConfig.cmake"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros_msgs/catkin_generated/installspace/mujoco_ros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros_msgs" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros_msgs/package.xml")
endif()

