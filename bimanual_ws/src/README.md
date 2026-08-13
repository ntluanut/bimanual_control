# Bimanual Drinking Platform v3

ROS Noetic high-level software for two Franka Panda arms and two Allegro hands.

This package is an integration layer. It does not replace `franka_ros` or the official Wonik Allegro V5 controllers.

## Repository layout

Place these folders in:

```bash
~/bimanual_ws/src/
```

Expected workspace:

```text
~/bimanual_ws/src
├── franka_ros
├── allegro_hand_ros_v5              # 4-finger V5 hand
├── allegro_hand_ros_v5-3Finger      # 3-finger hand
├── bimanual_drinking_msgs
├── bimanual_drinking_control
└── bimanual_drinking_bringup
```

Build:

```bash
cd ~/bimanual_ws
catkin_make
source devel/setup.bash
```

## Start the two Panda arms

Start without Franka grippers because Allegro hands are mounted.

Terminal 1:

```bash
source ~/bimanual_ws/devel/setup.bash
roslaunch franka_control franka_control.launch \
  robot_ip:=172.16.0.10 arm_id:=panda_left load_gripper:=false __ns:=panda_left
```

Terminal 2:

```bash
source ~/bimanual_ws/devel/setup.bash
roslaunch franka_control franka_control.launch \
  robot_ip:=172.16.0.20 arm_id:=panda_right load_gripper:=false __ns:=panda_right
```

Start trajectory controllers:

```bash
rosrun controller_manager spawner position_joint_trajectory_controller __ns:=/panda_left
rosrun controller_manager spawner position_joint_trajectory_controller __ns:=/panda_right
```

Check:

```bash
rostopic list | grep follow_joint_trajectory
rosservice call /panda_left/controller_manager/list_controllers
rosservice call /panda_right/controller_manager/list_controllers
```

You should see:

```text
/panda_left/position_joint_trajectory_controller/follow_joint_trajectory/...
/panda_right/position_joint_trajectory_controller/follow_joint_trajectory/...
```

## Start the two Allegro hands

The official Allegro controllers run separately.

### 4-finger hand

```bash
cd ~/bimanual_ws/src/allegro_hand_ros_v5
source devel/setup.bash   # or source ~/bimanual_ws/devel/setup.bash if built inside bimanual_ws
roslaunch allegro_hand_controllers allegro_hand.launch \
  NUM:=1 CAN_DEVICE:=/dev/pcanusb33 AUTO_CAN:=false KEYBOARD:=true HAND:=right TYPE:=B
```

### 3-finger hand

```bash
cd ~/bimanual_ws/src/allegro_hand_ros_v5-3Finger
source devel/setup.bash   # or source ~/bimanual_ws/devel/setup.bash if built inside bimanual_ws
roslaunch allegro_3f_hand_controllers allegro_hand.launch \
  NUM:=0 CAN_DEVICE:=/dev/pcanusb32 AUTO_CAN:=false KEYBOARD:=true
```

Important: do not use `AUTO_CAN:=true` with two hands.

## Start the bimanual high-level controller

```bash
source ~/bimanual_ws/devel/setup.bash
roslaunch bimanual_drinking_bringup bimanual_master.launch
```

This starts:

```text
/bimanual_master
/left_allegro_bridge
/right_allegro_bridge
```

The master connects to:

```text
/panda_left/position_joint_trajectory_controller/follow_joint_trajectory
/panda_right/position_joint_trajectory_controller/follow_joint_trajectory
```

The hand bridges currently default to `log_only` because the exact official Allegro command topics must be inspected locally.

## Send commands

```bash
rosrun bimanual_drinking_control send_task_command.py STATUS
rosrun bimanual_drinking_control send_task_command.py HOME 0.1
rosrun bimanual_drinking_control send_task_command.py PRE_GRASP 0.1
rosrun bimanual_drinking_control send_task_command.py GRASP_BOTTLE 0.1
rosrun bimanual_drinking_control send_task_command.py RUN_FULL_SEQUENCE 0.1
```

Emergency stop:

```bash
rostopic pub /bimanual_master/estop std_msgs/Bool "data: true"
```

Clear e-stop:

```bash
rosrun bimanual_drinking_control send_task_command.py CLEAR_ESTOP
```

## How synchronisation works

The master sends both Panda arm trajectories with the same future `header.stamp`.

```text
TaskCommand
   ↓
/bimanual_master
   ↓
left Panda FollowJointTrajectory goal
right Panda FollowJointTrajectory goal
same start timestamp
```

The Allegro hands are phase-synchronised at task level:

```text
GRASP_BOTTLE phase
   ↓
left hand bridge receives GRASP_BOTTLE
right hand bridge receives GRASP_BOTTLE
```

For true hand synchronisation, replace the log-only bridge with actual Allegro command topics or services.

## Important limitations

- The arm waypoints are placeholders for software testing only.
- Do not run near humans.
- Replace hard-coded waypoints with MoveIt/IK-generated collision-checked trajectories.
- The Allegro bridge needs mapping to the official Allegro command topics after inspecting `rostopic list` and `rostopic info`.
- Add force/distance safety before drinking assistance experiments.
