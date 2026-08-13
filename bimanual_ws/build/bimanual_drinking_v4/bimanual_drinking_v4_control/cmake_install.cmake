# Install script for directory: /home/scstln/bimanual_ws/src/bimanual_drinking_v4/bimanual_drinking_v4_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/scstln/bimanual_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/bimanual_drinking_v4_control.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bimanual_drinking_v4_control/cmake" TYPE FILE FILES
    "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/bimanual_drinking_v4_controlConfig.cmake"
    "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/bimanual_drinking_v4_controlConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bimanual_drinking_v4_control" TYPE FILE FILES "/home/scstln/bimanual_ws/src/bimanual_drinking_v4/bimanual_drinking_v4_control/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v4_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/bimanual_master_v4_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v4_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/pose_recorder_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v4_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/object_frame_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v4_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/relative_target_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v4_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v4/bimanual_drinking_v4_control/catkin_generated/installspace/send_task_command.py")
endif()

