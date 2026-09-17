# Install script for directory: /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/action" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/action/FollowJointTrajectory.action"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/action/GripperCommand.action"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/action/JointTrajectory.action"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/action/PointHead.action"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/action/SingleJointPosition.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryAction.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryActionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryActionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryActionFeedback.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/FollowJointTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandAction.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandActionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandActionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandActionFeedback.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/GripperCommandFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryAction.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryActionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryActionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryActionFeedback.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/JointTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadAction.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadActionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadActionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadActionFeedback.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/PointHeadFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionAction.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionActionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionActionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionActionFeedback.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionGoal.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionResult.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/control_msgs/msg/SingleJointPositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/msg" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/msg/GripperCommand.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/msg/JointControllerState.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/msg/JointJog.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/msg/JointTolerance.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/msg/JointTrajectoryControllerState.msg"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/msg/PidState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/srv" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/srv/QueryCalibrationState.srv"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/srv/QueryTrajectoryState.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/control_msgs/control_msgs/catkin_generated/installspace/control_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/include/control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/roseus/ros/control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/common-lisp/ros/control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/share/gennodejs/ros/control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/control_msgs/control_msgs/catkin_generated/installspace/control_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/control_msgs/control_msgs/catkin_generated/installspace/control_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs/cmake" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/control_msgs/control_msgs/catkin_generated/installspace/control_msgsConfig.cmake"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/control_msgs/control_msgs/catkin_generated/installspace/control_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/control_msgs" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/control_msgs/control_msgs/package.xml")
endif()

