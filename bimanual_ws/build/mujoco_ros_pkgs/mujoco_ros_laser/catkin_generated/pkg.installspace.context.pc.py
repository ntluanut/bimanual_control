# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;pluginlib;mujoco_ros;mujoco_ros_sensors;sensor_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmujoco_ros_laser".split(';') if "-lmujoco_ros_laser" != "" else []
PROJECT_NAME = "mujoco_ros_laser"
PROJECT_SPACE_DIR = "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install"
PROJECT_VERSION = "0.10.0"
