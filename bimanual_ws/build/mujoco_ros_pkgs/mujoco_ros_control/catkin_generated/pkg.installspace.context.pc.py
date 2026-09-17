# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;pluginlib;controller_manager;controller_interface;control_toolbox;hardware_interface;transmission_interface;joint_limits_interface;angles;urdf;mujoco_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmujoco_ros_control;-ldefault_mujoco_ros_robot_hw_sim".split(';') if "-lmujoco_ros_control;-ldefault_mujoco_ros_robot_hw_sim" != "" else []
PROJECT_NAME = "mujoco_ros_control"
PROJECT_SPACE_DIR = "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install"
PROJECT_VERSION = "0.10.0"
