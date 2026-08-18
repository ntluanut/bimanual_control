# Install script for directory: /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/ros_control/rqt_controller_manager

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
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/rqt_controller_manager/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_manager.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager/cmake" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_managerConfig.cmake"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_managerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/ros_control/rqt_controller_manager/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/ros_control/rqt_controller_manager/resource")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rqt_controller_manager" TYPE PROGRAM FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/rqt_controller_manager/catkin_generated/installspace/rqt_controller_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rqt_controller_manager" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/ros_control/rqt_controller_manager/plugin.xml")
endif()

