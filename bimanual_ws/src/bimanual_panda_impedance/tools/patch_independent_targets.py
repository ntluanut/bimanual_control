#!/usr/bin/env python3

from pathlib import Path
import re
import shutil
import sys

if len(sys.argv) != 2:
    raise SystemExit(
        "Usage: patch_independent_targets.py "
        "~/bimanual_ws/src/franka_ros/franka_example_controllers"
    )

pkg = Path(sys.argv[1]).expanduser().resolve()

cpp = pkg / "src" / "dual_arm_cartesian_impedance_example_controller.cpp"
hdr = (
    pkg
    / "include"
    / "franka_example_controllers"
    / "dual_arm_cartesian_impedance_example_controller.h"
)

if not cpp.exists():
    raise SystemExit("CPP not found: {}".format(cpp))

if not hdr.exists():
    raise SystemExit("Header not found: {}".format(hdr))

c = cpp.read_text()
h = hdr.read_text()

print("CPP:", cpp)
print("HDR:", hdr)

# ------------------------------------------------------------
# Safety checks
# ------------------------------------------------------------

if '"left_target_pose"' in c or '"right_target_pose"' in c:
    print("\nController already appears to contain independent target topics.")
    print("No changes made.")
    raise SystemExit(0)

required_cpp = [
    "sub_target_pose_left_",
    "targetPoseCallback",
    "left_arm_id_",
    "right_arm_id_",
    "arms_data_",
]

for token in required_cpp:
    if token not in c:
        raise SystemExit(
            "Required CPP token missing: {}\nNo changes made.".format(token)
        )

required_h = [
    "sub_target_pose_left_",
    "targetPoseCallback",
]

for token in required_h:
    if token not in h:
        raise SystemExit(
            "Required header token missing: {}\nNo changes made.".format(token)
        )

# ------------------------------------------------------------
# Backups
# ------------------------------------------------------------

for p in [cpp, hdr]:
    backup = Path(str(p) + ".pre_independent_targets.bak")

    if not backup.exists():
        shutil.copy2(p, backup)
        print("Backup:", backup)
    else:
        print("Backup already exists:", backup)

# Work on temporary strings only.
new_c = c
new_h = h

# ============================================================
# CPP CHANGE 1:
# Add left_target_pose and right_target_pose subscribers
# immediately after the existing center subscriber.
# ============================================================

subscriber_pattern = re.compile(
    r'(?P<indent>[ \t]*)sub_target_pose_left_[ \t]*='
    r'[ \t]*node_handle\.subscribe\(subscribe_options\);'
)

m = subscriber_pattern.search(new_c)

if not m:
    raise SystemExit(
        "\nCould not locate existing center subscriber.\n"
        "No source files modified."
    )

indent = m.group("indent")

subscriber_code = r'''

{I}// Independent Cartesian target for logical LEFT arm.
{I}boost::function<void(const geometry_msgs::PoseStamped::ConstPtr&)>
{I}    left_target_callback =
{I}        boost::bind(
{I}            &DualArmCartesianImpedanceExampleController::leftTargetPoseCallback,
{I}            this, _1);

{I}ros::SubscribeOptions left_target_subscribe_options;
{I}left_target_subscribe_options.init(
{I}    "left_target_pose", 1, left_target_callback);
{I}left_target_subscribe_options.transport_hints =
{I}    ros::TransportHints().reliable().tcpNoDelay();

{I}sub_left_target_pose_ =
{I}    node_handle.subscribe(left_target_subscribe_options);


{I}// Independent Cartesian target for logical RIGHT arm.
{I}boost::function<void(const geometry_msgs::PoseStamped::ConstPtr&)>
{I}    right_target_callback =
{I}        boost::bind(
{I}            &DualArmCartesianImpedanceExampleController::rightTargetPoseCallback,
{I}            this, _1);

{I}ros::SubscribeOptions right_target_subscribe_options;
{I}right_target_subscribe_options.init(
{I}    "right_target_pose", 1, right_target_callback);
{I}right_target_subscribe_options.transport_hints =
{I}    ros::TransportHints().reliable().tcpNoDelay();

{I}sub_right_target_pose_ =
{I}    node_handle.subscribe(right_target_subscribe_options);
'''.format(I=indent)

insert_pos = m.end()

new_c = (
    new_c[:insert_pos]
    + subscriber_code
    + new_c[insert_pos:]
)

# ============================================================
# CPP CHANGE 2:
# Add independent target callback implementations immediately
# before the existing targetPoseCallback().
# ============================================================

callback_pattern = re.compile(
    r'void\s+DualArmCartesianImpedanceExampleController::'
    r'targetPoseCallback\s*\('
)

m = callback_pattern.search(new_c)

if not m:
    raise SystemExit(
        "\nCould not locate targetPoseCallback implementation.\n"
        "No source files modified."
    )

callback_code = r'''
void DualArmCartesianImpedanceExampleController::setArmTargetPose(
    const geometry_msgs::PoseStamped::ConstPtr& msg,
    const std::string& arm_id) {

  const std::string expected_frame = arm_id + "_link0";

  // Each Franka Cartesian desired pose is expressed in that
  // robot's own O/link0 frame.
  if (!msg->header.frame_id.empty() &&
      msg->header.frame_id != expected_frame) {

    ROS_ERROR_STREAM_THROTTLE(
        1.0,
        "Independent Cartesian target for "
            << arm_id
            << " has frame_id '" << msg->header.frame_id
            << "', expected '" << expected_frame << "'.");

    return;
  }

  Eigen::Affine3d O_T_EE_target;
  tf::poseMsgToEigen(msg->pose, O_T_EE_target);

  auto& arm_data = arms_data_.at(arm_id);

  arm_data.position_d_target_ =
      O_T_EE_target.translation();

  Eigen::Quaterniond orientation_target(
      O_T_EE_target.rotation());

  // Quaternion q and -q represent the same orientation.
  // Keep the representation continuous to avoid interpolation
  // taking the long rotation path.
  if (arm_data.orientation_d_target_.coeffs().dot(
          orientation_target.coeffs()) < 0.0) {

    orientation_target.coeffs() *= -1.0;
  }

  arm_data.orientation_d_target_ =
      orientation_target;
}


void DualArmCartesianImpedanceExampleController::leftTargetPoseCallback(
    const geometry_msgs::PoseStamped::ConstPtr& msg) {

  setArmTargetPose(msg, left_arm_id_);
}


void DualArmCartesianImpedanceExampleController::rightTargetPoseCallback(
    const geometry_msgs::PoseStamped::ConstPtr& msg) {

  setArmTargetPose(msg, right_arm_id_);
}


'''

new_c = (
    new_c[:m.start()]
    + callback_code
    + new_c[m.start():]
)

# ============================================================
# HEADER CHANGE 1:
# Add two new subscriber members after existing subscriber.
# ============================================================

header_sub_pattern = re.compile(
    r'(?P<indent>[ \t]*)ros::Subscriber\s+'
    r'sub_target_pose_left_\s*;'
)

m = header_sub_pattern.search(new_h)

if not m:
    raise SystemExit(
        "\nCould not locate subscriber member in header.\n"
        "No source files modified."
    )

indent = m.group("indent")

header_sub_code = """

{I}///< Independent Cartesian target subscribers
{I}ros::Subscriber sub_left_target_pose_;
{I}ros::Subscriber sub_right_target_pose_;
""".format(I=indent)

new_h = (
    new_h[:m.end()]
    + header_sub_code
    + new_h[m.end():]
)

# ============================================================
# HEADER CHANGE 2:
# Add callback declarations after targetPoseCallback declaration.
# ============================================================

header_callback_pattern = re.compile(
    r'(?P<indent>[ \t]*)void\s+targetPoseCallback\s*\('
    r'const\s+geometry_msgs::PoseStamped::ConstPtr&\s+msg'
    r'\s*\)\s*;'
)

m = header_callback_pattern.search(new_h)

if not m:
    raise SystemExit(
        "\nCould not locate targetPoseCallback declaration in header.\n"
        "No source files modified."
    )

indent = m.group("indent")

header_callback_code = """

{I}/**
{I} * Sets an independent Cartesian equilibrium target for one arm.
{I} */
{I}void setArmTargetPose(
{I}    const geometry_msgs::PoseStamped::ConstPtr& msg,
{I}    const std::string& arm_id);

{I}/**
{I} * Independent equilibrium target for logical LEFT arm.
{I} */
{I}void leftTargetPoseCallback(
{I}    const geometry_msgs::PoseStamped::ConstPtr& msg);

{I}/**
{I} * Independent equilibrium target for logical RIGHT arm.
{I} */
{I}void rightTargetPoseCallback(
{I}    const geometry_msgs::PoseStamped::ConstPtr& msg);
""".format(I=indent)

new_h = (
    new_h[:m.end()]
    + header_callback_code
    + new_h[m.end():]
)

# ============================================================
# Final verification BEFORE writing
# ============================================================

checks = [
    '"left_target_pose"',
    '"right_target_pose"',
    "leftTargetPoseCallback",
    "rightTargetPoseCallback",
    "setArmTargetPose",
]

for token in checks:
    if token not in new_c:
        raise SystemExit(
            "Internal patch verification failed for CPP token: "
            + token
        )

for token in [
    "sub_left_target_pose_",
    "sub_right_target_pose_",
    "leftTargetPoseCallback",
    "rightTargetPoseCallback",
    "setArmTargetPose",
]:
    if token not in new_h:
        raise SystemExit(
            "Internal patch verification failed for header token: "
            + token
        )

# ============================================================
# Write only after ALL verification succeeded
# ============================================================

cpp.write_text(new_c)
hdr.write_text(new_h)

print("\n============================================================")
print(" PATCH SUCCESSFUL")
print("============================================================")
print("Existing interface preserved:")
print("  centering_frame_target_pose")
print()
print("New independent interfaces:")
print("  left_target_pose")
print("  right_target_pose")
print()
print("No impedance-control equations were changed.")
print("============================================================")
