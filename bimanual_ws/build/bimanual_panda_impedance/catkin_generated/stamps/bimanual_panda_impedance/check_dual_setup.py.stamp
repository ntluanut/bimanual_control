#!/usr/bin/env python3

"""Check the principal resources required by the dual-arm controller."""

import sys

import rospy
import rosservice
import rostopic


REQUIRED_TOPICS = [
    "/joint_states",
    (
        "/dual_arm_cartesian_impedance_example_controller/"
        "centering_frame"
    ),
    (
        "/dual_arm_cartesian_impedance_example_controller/"
        "centering_frame_target_pose"
    ),
]


def main() -> int:
    rospy.init_node(
        "check_dual_setup",
        anonymous=True,
        disable_signals=True,
    )

    published_topics = dict(
        rospy.get_published_topics()
    )

    print("")
    print("=" * 64)
    print(" DUAL-PANDA SETUP CHECK")
    print("=" * 64)

    okay = True

    for topic in REQUIRED_TOPICS:
        topic_type = published_topics.get(topic)

        if topic_type:
            print(f"[OK]      {topic}")
            print(f"          type: {topic_type}")
        else:
            # Target topic may have only a subscriber before our mover starts.
            topic_class, _, _ = rostopic.get_topic_class(
                topic,
                blocking=False,
            )

            if topic_class is not None:
                print(f"[OK]      {topic}")
            else:
                print(f"[MISSING] {topic}")
                okay = False

    services = rosservice.get_service_list()

    dynamic_services = [
        service
        for service in services
        if "dynamic_reconfigure_compliance_param_node"
        in service
    ]

    print("")
    print("Dynamic-reconfigure services:")

    if dynamic_services:
        for service in dynamic_services:
            print(f"  {service}")
    else:
        print("  None found.")
        okay = False

    print("=" * 64)
    print("")

    return 0 if okay else 1


if __name__ == "__main__":
    sys.exit(main())
