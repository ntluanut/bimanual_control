# Bimanual Drinking Assistance Platform

This README records the current ROS Noetic setup for controlling:

- 2 Franka Panda arms
- 1 Allegro V5 4-finger hand
- 1 Allegro V5 3-finger hand
- high-level bimanual drinking assistance coordination

The current workspace is:

```bash
~/bimanual_ws
```

Expected source tree:

```bash
~/bimanual_ws/src
├── franka_ros
├── allegro_hand_ros_v5
├── allegro_hand_ros_v5-3Finger
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

---

## 1. System Architecture

The platform should not be controlled by one node directly commanding raw robot hardware. The safer structure is:

```text
Keyboard / GUI / Voice Command
        ↓
High-level Task Manager
        ↓
Trajectory / Hand Coordinator
        ↓
Safety Supervisor
        ↓
Device Controllers
 ┌──────────────┬──────────────┬────────────────┬────────────────┐
 │ Panda Left   │ Panda Right  │ Allegro 3F     │ Allegro 4F     │
 └──────────────┴──────────────┴────────────────┴────────────────┘
```

The arms and hands use different control interfaces:

```text
Panda arms:
  franka_ros + ROS-control trajectory controllers

Allegro hands:
  official Allegro torque/grasp controller packages
```

Therefore, the master/high-level node should coordinate **task phases**, while lower-level controllers execute the actual arm and hand commands.

---

## 2. Start ROS Master

Terminal 1:

```bash
roscore
```

---

## 3. Start Panda Arms

Important: because Allegro hands are used, the Franka gripper must be disabled.

### Panda Left

Terminal 2:

```bash
cd ~/bimanual_ws
source devel/setup.bash

roslaunch franka_control franka_control.launch \
  robot_ip:=172.16.0.10 \
  arm_id:=panda_left \
  load_gripper:=false \
  __ns:=panda_left
```

### Panda Right

Terminal 3:

```bash
cd ~/bimanual_ws
source devel/setup.bash

roslaunch franka_control franka_control.launch \
  robot_ip:=172.16.0.20 \
  arm_id:=panda_right \
  load_gripper:=false \
  __ns:=panda_right
```

Check that both arms are publishing state:

```bash
rostopic list | grep franka_state_controller
```

Expected topics include:

```bash
/panda_left/franka_state_controller/franka_states
/panda_right/franka_state_controller/franka_states
/panda_left/joint_states
/panda_right/joint_states
```

---

## 4. Start Panda Trajectory Controllers

The Franka launch starts the state controller only. To move the arms using trajectories, start a position joint trajectory controller for each arm.

Terminal 4:

```bash
cd ~/bimanual_ws
source devel/setup.bash

rosrun controller_manager spawner position_joint_trajectory_controller __ns:=/panda_left
```

Terminal 5:

```bash
cd ~/bimanual_ws
source devel/setup.bash

rosrun controller_manager spawner position_joint_trajectory_controller __ns:=/panda_right
```

Check controllers:

```bash
rosservice call /panda_left/controller_manager/list_controllers
rosservice call /panda_right/controller_manager/list_controllers
```

Expected:

```text
position_joint_trajectory_controller: running
franka_state_controller: running
```

Check action topics:

```bash
rostopic list | grep follow_joint_trajectory
```

Expected:

```bash
/panda_left/position_joint_trajectory_controller/follow_joint_trajectory/goal
/panda_right/position_joint_trajectory_controller/follow_joint_trajectory/goal
```

---

## 5. Start Allegro Hands

Before launching, check PCAN devices:

```bash
pcaninfo
```

Do not use `AUTO_CAN:=true` when controlling two hands. Assign CAN devices manually.

### 4-Finger Allegro V5 Hand

Terminal 6:

```bash
cd ~/bimanual_ws/src/allegro_hand_ros_v5
source devel/setup.bash

roslaunch allegro_hand_controllers allegro_hand.launch \
  NUM:=1 \
  CAN_DEVICE:=/dev/pcanusb33 \
  AUTO_CAN:=false \
  KEYBOARD:=true \
  HAND:=right \
  TYPE:=B
```

### 3-Finger Allegro V5 Hand

Terminal 7:

```bash
cd ~/bimanual_ws/src/allegro_hand_ros_v5-3Finger
source devel/setup.bash

roslaunch allegro_3f_hand_controllers allegro_hand.launch \
  NUM:=0 \
  CAN_DEVICE:=/dev/pcanusb32 \
  AUTO_CAN:=false \
  KEYBOARD:=true
```

The 4-finger and 3-finger packages are currently launched from their own package folders because they have their own generated `devel/setup.bash` environments.

---

## 6. Current Synchronisation Idea

The four devices are not synchronised by sending raw commands at the same time from Python. The correct design is:

```text
High-level task command
        ↓
Task manager chooses phase
        ↓
Coordinator sends:
  - synchronized JointTrajectory goals to both Panda arms
  - staged grasp/open/hold commands to both Allegro hands
        ↓
Safety supervisor monitors stop/fault states
```

For the Panda arms, synchronisation is done using standard ROS action servers:

```bash
/panda_left/position_joint_trajectory_controller/follow_joint_trajectory
/panda_right/position_joint_trajectory_controller/follow_joint_trajectory
```

The coordinator sends both arm trajectories with the same future start time:

```text
trajectory.header.stamp = now + 0.75 seconds
```

This allows the two arm controllers to begin together.

For the Allegro hands, the official V5 controllers are torque/grasp based, not standard `FollowJointTrajectory` controllers. Therefore, the next required software module is an Allegro bridge node.

---

## 7. High-Level Control Package

The high-level code is stored in:

```bash
~/bimanual_ws/src/bimanual_drinking_msgs
~/bimanual_ws/src/bimanual_drinking_control
~/bimanual_ws/src/bimanual_drinking_bringup
```

### `bimanual_drinking_msgs`

Contains task-level messages such as:

```text
DrinkingTaskCommand.msg
DrinkingTaskState.msg
SafetyState.msg
```

These should describe task phases and safety state, not raw low-level robot commands.

### `bimanual_drinking_control`

Contains high-level nodes:

```text
trajectory_coordinator_node.py
safety_supervisor_node.py
keyboard_task_client.py
```

Current role:

```text
trajectory_coordinator_node.py
  - connects to arm trajectory action servers
  - sends synchronized arm trajectories
  - checks action result/timeout
  - rejects commands during emergency stop

safety_supervisor_node.py
  - receives operator stop / voice stop
  - publishes safety state and emergency stop

keyboard_task_client.py
  - simple manual test client for task commands
```

### `bimanual_drinking_bringup`

Contains launch/config files for the bimanual coordination layer.

Main launch:

```bash
roslaunch bimanual_drinking_bringup bimanual_drinking_bringup.launch
```

---

## 8. Required Config Correction

The coordinator must point to the real Panda trajectory action servers.

Use these controller namespaces:

```yaml
left_arm:
  controller_ns: /panda_left/position_joint_trajectory_controller/follow_joint_trajectory

right_arm:
  controller_ns: /panda_right/position_joint_trajectory_controller/follow_joint_trajectory
```

Do not use:

```yaml
/panda_left/joint_trajectory_controller/follow_joint_trajectory
/panda_right/joint_trajectory_controller/follow_joint_trajectory
```

unless those controllers actually exist.

---

## 9. Missing Piece: Allegro Bridge Node

Because Allegro V5 is torque-controller based, the master node should not assume this interface:

```bash
/allegro_left/joint_trajectory_controller/follow_joint_trajectory
/allegro_right/joint_trajectory_controller/follow_joint_trajectory
```

Instead, implement:

```text
allegro_hand_bridge_node
```

Suggested interface:

```bash
/bimanual_hands/command
/bimanual_hands/state
```

Suggested commands:

```text
HOME
OPEN
PRE_GRASP
GRASP_BOTTLE
HOLD_BOTTLE
RELEASE
TORQUE_OFF
```

The bridge should internally call or publish to the official Allegro controller/grasp interfaces.

Then the master task manager can coordinate arms and hands like this:

```text
PRE_GRASP:
  send arm trajectories to pre-grasp pose
  send hand OPEN/PRE_GRASP command

GRASP_BOTTLE:
  hold arms steady
  send hand GRASP_BOTTLE command

LIFT_BOTTLE:
  send synchronized arm lift trajectory
  send hand HOLD_BOTTLE command

MOVE_TO_MOUTH:
  send synchronized arm trajectory near mouth
  hand maintains grasp

TILT_BOTTLE:
  send small coordinated arm tilt trajectory
  hand maintains grasp

UNTILT_BOTTLE:
  reverse tilt trajectory

RETURN_BOTTLE:
  move bottle back to table

RELEASE_BOTTLE:
  send hand RELEASE command
```

---

## 10. Recommended Full Startup Order

Use this order when bringing up the full system:

```text
1. roscore
2. panda_left franka_control, no gripper, namespaced
3. panda_right franka_control, no gripper, namespaced
4. panda_left position_joint_trajectory_controller
5. panda_right position_joint_trajectory_controller
6. 4-finger Allegro hand
7. 3-finger Allegro hand
8. bimanual_drinking_bringup.launch
9. keyboard/GUI/voice task client
```

Commands summary:

```bash
# Panda left
roslaunch franka_control franka_control.launch robot_ip:=172.16.0.10 arm_id:=panda_left load_gripper:=false __ns:=panda_left

# Panda right
roslaunch franka_control franka_control.launch robot_ip:=172.16.0.20 arm_id:=panda_right load_gripper:=false __ns:=panda_right

# Panda left trajectory controller
rosrun controller_manager spawner position_joint_trajectory_controller __ns:=/panda_left

# Panda right trajectory controller
rosrun controller_manager spawner position_joint_trajectory_controller __ns:=/panda_right

# 4-finger Allegro
cd ~/bimanual_ws/src/allegro_hand_ros_v5
source devel/setup.bash
roslaunch allegro_hand_controllers allegro_hand.launch NUM:=1 CAN_DEVICE:=/dev/pcanusb33 AUTO_CAN:=false KEYBOARD:=true HAND:=right TYPE:=B

# 3-finger Allegro
cd ~/bimanual_ws/src/allegro_hand_ros_v5-3Finger
source devel/setup.bash
roslaunch allegro_3f_hand_controllers allegro_hand.launch NUM:=0 CAN_DEVICE:=/dev/pcanusb32 AUTO_CAN:=false KEYBOARD:=true

# High-level bimanual coordination
cd ~/bimanual_ws
source devel/setup.bash
roslaunch bimanual_drinking_bringup bimanual_drinking_bringup.launch
```

---

## 11. Safety Notes

Do not test near a person yet.

Before real drinking assistance, the system still needs:

```text
- MoveIt / IK trajectory generation
- collision checking between both arms
- collision checking with head/mouth safety zones
- Franka external force monitoring
- Allegro grasp state monitoring
- bottle pose estimation
- mouth/head pose estimation
- emergency stop testing
- soft stop / pause / resume logic
```

For now, use only very small joint-space test motions with both arms clear of each other.

---

## 12. Next Development Tasks

Priority order:

```text
1. Verify both Panda trajectory action servers work.
2. Update bimanual coordinator config to use /panda_left/position_joint_trajectory_controller and /panda_right/position_joint_trajectory_controller.
3. Test small synchronized HOME trajectory for both arms only.
4. Identify official Allegro command topics/services/actions.
5. Write allegro_hand_bridge_node.
6. Integrate hand bridge into task manager.
7. Replace hard-coded joint waypoints with MoveIt/IK-generated trajectories.
8. Add force, collision, and patient safety monitoring.
9. Add drinking task state machine.
10. Connect later to MuJoCo digital twin.
```

#13.DUAL ARMS
rosrun bimanual_panda_impedance \
move_dual_center_pose.py \
~/bimanual_ws/src/bimanual_panda_impedance/config/taught_poses/latest.yaml \
--pose-name dual_small_test \
--center-topic \
/panda_dual/dual_arm_cartesian_impedance_example_controller/centering_frame \
--target-topic \
/panda_dual/dual_arm_cartesian_impedance_example_controller/centering_frame_target_pose \
--linear-speed 0.05 \
--angular-speed 0.3