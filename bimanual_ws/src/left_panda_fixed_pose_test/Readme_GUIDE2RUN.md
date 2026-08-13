# Autonomous Cartesian Impedance Control
**Package:** `left_panda_fixed_pose_test`

Author: Nguyen Thanh Luan

---

# 1. Objective

This package performs autonomous Cartesian motion of a real Franka Panda robot using the official Franka Cartesian Impedance Controller.

Unlike the original interactive-marker demo supplied by `franka_ros`, the robot trajectory is generated automatically from taught poses stored in a YAML file.

The controller remains the official Franka implementation. Only the command source is replaced.

```
Interactive Marker (RViz)
            │
            ▼
equilibrium_pose topic
            │
            ▼
Cartesian Impedance Controller
            │
            ▼
Joint Torques
            │
            ▼
Panda Robot
```

becomes

```
Saved Pose YAML
        │
        ▼
move_saved_pose_impedance.py
        │
        ▼
equilibrium_pose topic
        │
        ▼
Official Cartesian Impedance Controller
        │
        ▼
Joint Torques
        │
        ▼
Panda Robot
```

The low-level controller is unchanged.

---

# 2. Controller Used

Official controller:

```
franka_example_controllers/
    CartesianImpedanceExampleController
```

ROS controller type

```
franka_example_controllers/CartesianImpedanceExampleController
```

Hardware interface

```
hardware_interface::EffortJointInterface
```

Control mode

```
Joint torque control
```

NOT

```
Cartesian motion generator
```

Therefore the robot behaves as a compliant impedance-controlled manipulator instead of executing position commands directly.

---

# 3. Why this controller?

Advantages

✓ extremely smooth motion

✓ no Cartesian motion-generator discontinuity reflex

✓ compliant motion

✓ safe interaction

✓ torque-rate limiting

✓ damping built into controller

✓ supports autonomous trajectory generation by publishing equilibrium poses

---

# 4. Control Concept

The controller behaves like a virtual spring-damper.

Instead of commanding

```
Move robot here.
```

we command

```
Virtual equilibrium pose
```

The controller computes

```
Cartesian pose error
        ↓
Virtual spring force
        ↓
Cartesian wrench
        ↓
Jacobian transpose
        ↓
Joint torques
```

Position error

```
F = Kp × position_error
```

Orientation error

```
τ = Kr × orientation_error
```

The damping reduces oscillation.

Nullspace control keeps a preferred joint configuration.

---
# 5. Record teaching pose
source ~/ros_panda_network.sh
source ~/bimanual_ws/devel/setup.bash

export LEFT_PANDA_IP=172.16.0.20

Terminal 1
roslaunch franka_example_controllers \
  cartesian_impedance_example_controller.launch \
  robot_ip:="$LEFT_PANDA_IP" \
  load_gripper:=true

Terminal 2
source ~/ros_panda_network.sh
source ~/bimanual_ws/devel/setup.bash

rosrun dynamic_reconfigure dynparam set \
  /cartesian_impedance_example_controller/dynamic_reconfigure_compliance_param_node \
  "{translational_stiffness: 500.0, rotational_stiffness: 30.0, nullspace_stiffness: 2.0}"

Terminal 3: set right file:
source ~/ros_panda_network.sh
source ~/bimanual_ws/devel/setup.bash

export LEFT_POSE_FILE=\
~/bimanual_ws/src/left_panda_fixed_pose_test/config/taught_poses/latest.yaml

record:
python3 \
~/bimanual_ws/src/left_panda_fixed_pose_test/scripts/save_left_panda_pose.py \
"$LEFT_POSE_FILE" \
--pose-name bottle_approach


# 6. Current Working Configuration

Launch file

```
cartesian_impedance_autonomous.launch
```

Launch command

```bash
source ~/ros_panda_network.sh
source ~/bimanual_ws/devel/setup.bash

roslaunch left_panda_fixed_pose_test \
    cartesian_impedance_autonomous.launch \
    robot_ip:=172.16.0.20 \
    load_gripper:=true
```

This starts

✓ franka_control

✓ franka_state_controller

✓ cartesian_impedance_example_controller

without

✗ Interactive Marker

✗ RViz controller

Therefore there is only one equilibrium pose publisher.

---

# 7. Terminal Layout

## Terminal 1

Launch controller

```bash
source ~/ros_panda_network.sh
source ~/bimanual_ws/devel/setup.bash

roslaunch left_panda_fixed_pose_test \
    cartesian_impedance_autonomous.launch \
    robot_ip:=172.16.0.20 \
    load_gripper:=true
```
or:

roslaunch right_panda_fixed_pose_test \
  cartesian_impedance_autonomous.launch \
  robot_ip:="$RIGHT_PANDA_IP" \
  load_gripper:=false
---

## Terminal 2

Increase controller stiffness

```bash
rosrun dynamic_reconfigure dynparam set \
/cartesian_impedance_example_controller/dynamic_reconfigure_compliance_param_node \
"{translational_stiffness: 500.0,
rotational_stiffness: 30.0,
nullspace_stiffness: 2.0}"
```

Current values

| Parameter | Value |
|------------|------:|
| Translational stiffness | 500 N/m |
| Rotational stiffness | 30 Nm/rad |
| Nullspace stiffness | 2 |

---

## Terminal 3

Run autonomous trajectory

```bash
POSE_FILE=~/bimanual_ws/src/left_panda_fixed_pose_test/config/taught_poses/latest.yaml

python3 \
~/bimanual_ws/src/left_panda_fixed_pose_test/scripts/move_saved_pose_impedance.py \
"$POSE_FILE" \
--pose-name bottle_approach \
--linear-speed 0.1 \
--angular-speed 0.5
```

or right panda:
source ~/ros_panda_network.sh
source ~/bimanual_ws/devel/setup.bash

export RIGHT_POSE_FILE=\
~/bimanual_ws/src/right_panda_fixed_pose_test/config/taught_poses/latest.yaml

```````````````

python3 \
~/bimanual_ws/src/right_panda_fixed_pose_test/scripts/move_saved_pose_impedance.py \
"$RIGHT_POSE_FILE" \
--pose-name bottle_approach \
--linear-speed 0.10 \
--angular-speed 0.50

---

# 7. Motion Parameters

Current values

| Parameter | Value |
|-----------|-------|
| Linear speed | 0.10 m/s |
| Angular speed | 0.50 rad/s |
| Trajectory | Quintic interpolation |
| Position source | YAML |
| Orientation interpolation | SLERP |
| Publish topic | equilibrium_pose |

Trajectory duration is computed automatically from

```
translation distance
```

and

```
rotation angle
```

using the specified speed limits.

---

# 8. Experimental Result

Current experiment

Translation

```
263.3 mm
```

Rotation

```
2.6°
```

Trajectory duration

```
5.0 s
```

Controller stiffness

```
500 N/m
30 Nm/rad
2
```

Results

Final position error

```
17.6 mm
```

Final orientation error

```
4.07°
```

Motion quality

✓ smooth

✓ stable

✓ no reflex

✓ suitable speed

---

# 9. Observations

Increasing stiffness from

```
200 N/m
10 Nm/rad
```

to

```
500 N/m
30 Nm/rad
```

significantly reduced tracking error.

Higher stiffness causes

• earlier motion response

• smaller steady-state error

• higher virtual restoring force

but may eventually reduce compliance if increased excessively.

---

# 10. Current Limitations

The controller is an impedance controller.

Therefore

```
desired pose
```

is an equilibrium point rather than a guaranteed position.

Consequently

small steady-state tracking errors are expected when

* payload model is imperfect

* tool centre point differs

* external forces exist

* stiffness is finite

This is expected behaviour and differs from a pure position controller.

---

# 11. Future Improvements

1. Improve payload model.

2. Tune stiffness.

3. Tune damping.

4. Tune nullspace stiffness.

5. Adaptive stiffness.

6. Force-based contact mode.

7. Automatic switching between

```
Free-space

↓

Contact
```

using different impedance parameters.

8. Integrate with learned diffusion policy.

The diffusion policy will generate Cartesian equilibrium trajectories while the impedance controller guarantees smooth, physically compliant execution.

```
Diffusion Policy
        │
        ▼
Desired Cartesian Pose
        │
        ▼
Cartesian Impedance Controller
        │
        ▼
Joint Torques
        │
        ▼
Robot
```


Now, based on this good progress, let's design carefully the 2nd robot motion from its own initial pose/location, track 1st robot end-effector (about 15cm above )