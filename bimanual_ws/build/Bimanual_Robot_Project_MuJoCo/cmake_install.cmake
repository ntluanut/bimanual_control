# Install script for directory: /uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/Bimanual_Robot_Project_MuJoCo

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/catkin_generated/installspace/bimanual_robot_project_mujoco.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bimanual_robot_project_mujoco/cmake" TYPE FILE FILES
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/catkin_generated/installspace/bimanual_robot_project_mujocoConfig.cmake"
    "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/catkin_generated/installspace/bimanual_robot_project_mujocoConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bimanual_robot_project_mujoco" TYPE FILE FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/src/Bimanual_Robot_Project_MuJoCo/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_robot_project_mujoco" TYPE PROGRAM FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/catkin_generated/installspace/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_robot_project_mujoco" TYPE PROGRAM FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/catkin_generated/installspace/diffik_nullspace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bimanual_robot_project_mujoco" TYPE PROGRAM FILES "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/Bimanual_Robot_Project_MuJoCo/catkin_generated/installspace/init.py")
endif()

