# Install script for directory: /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros

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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mujoco_ros" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/include/mujoco_ros/SimParamsConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/mujoco_ros" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/mujoco_ros/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/mujoco_ros/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/mujoco_ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/python3/dist-packages/mujoco_ros/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mujoco_ros" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/include/mujoco_ros/render_backend.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros/catkin_generated/installspace/mujoco_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros/cmake" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros/catkin_generated/installspace/mujoco_rosConfig.cmake"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros/catkin_generated/installspace/mujoco_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros/src/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mujoco_ros" TYPE DIRECTORY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros/include/mujoco_ros/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/libmujoco_ros.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so"
         OLD_RPATH "/opt/ros/noetic/lib:/uolstore/home/users/sc23j3k/.local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmujoco_ros.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros" TYPE EXECUTABLE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib/mujoco_ros/mujoco_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node"
         OLD_RPATH "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/devel/lib:/opt/ros/noetic/lib:/uolstore/home/users/sc23j3k/.local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mujoco_ros/mujoco_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mujoco_ros" TYPE DIRECTORY FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros/launch"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros/config"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/mujoco_ros_pkgs/mujoco_ros/assets"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/mujoco_ros_pkgs/mujoco_ros/test/cmake_install.cmake")
endif()

