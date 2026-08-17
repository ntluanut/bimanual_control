execute_process(COMMAND "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager_tests/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/build/ros_control/controller_manager_tests/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
