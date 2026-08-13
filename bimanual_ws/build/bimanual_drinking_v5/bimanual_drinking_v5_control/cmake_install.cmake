# Install script for directory: /home/scstln/bimanual_ws/src/bimanual_drinking_v5/bimanual_drinking_v5_control

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v5/bimanual_drinking_v5_control/catkin_generated/installspace/bimanual_drinking_v5_control.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bimanual_drinking_v5_control/cmake" TYPE FILE FILES
    "/home/scstln/bimanual_ws/build/bimanual_drinking_v5/bimanual_drinking_v5_control/catkin_generated/installspace/bimanual_drinking_v5_controlConfig.cmake"
    "/home/scstln/bimanual_ws/build/bimanual_drinking_v5/bimanual_drinking_v5_control/catkin_generated/installspace/bimanual_drinking_v5_controlConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bimanual_drinking_v5_control" TYPE FILE FILES "/home/scstln/bimanual_ws/src/bimanual_drinking_v5/bimanual_drinking_v5_control/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v5_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v5/bimanual_drinking_v5_control/catkin_generated/installspace/task_master_v5.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v5_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v5/bimanual_drinking_v5_control/catkin_generated/installspace/bottle_frame_manager.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_drinking_v5_control" TYPE PROGRAM FILES "/home/scstln/bimanual_ws/build/bimanual_drinking_v5/bimanual_drinking_v5_control/catkin_generated/installspace/send_task_v5.py")
endif()

