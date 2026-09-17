# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/uolstore/home/users/sc23j3k/.mujoco/mujoco-3.3.5/include".split(';') if "${prefix}/include;/uolstore/home/users/sc23j3k/.mujoco/mujoco-3.3.5/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;actionlib;pluginlib;mujoco_ros_msgs;urdf;tf2;tf2_ros;tf2_geometry_msgs;image_transport;camera_info_manager;sensor_msgs;dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmujoco_ros;/uolstore/home/users/sc23j3k/.mujoco/mujoco-3.3.5/lib/libmujoco.so".split(';') if "-lmujoco_ros;/uolstore/home/users/sc23j3k/.mujoco/mujoco-3.3.5/lib/libmujoco.so" != "" else []
PROJECT_NAME = "mujoco_ros"
PROJECT_SPACE_DIR = "/uolstore/home/users/sc23j3k/bimanual_control/bimanual_ws/install"
PROJECT_VERSION = "0.10.0"
