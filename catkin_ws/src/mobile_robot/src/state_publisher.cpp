//string
// Created by jongsoo on 21. 5. 3..
//

#include <string>
#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "tf/transform_broadcaster.h"
#include "state_publisher.hpp"

namespace state_publisher_class
{
    StatePublisherClass::StatePublisherClass() {
        joint_pub = nh.advertise<sensor_msgs::JointState>("joint_states", 1);
        nh.setParam("Joint1", -1);
        nh.setParam("Joint2", -1);
        nh.setParam("Joint3", -1);
        nh.setParam("Joint4", -1);
    }

    StatePublisherClass::~StatePublisherClass() {}

    void StatePublisherClass::run(){
        sensor_msgs::JointState joint_state;

        nh.getParam("Joint1", Joint1);
        nh.getParam("Joint2", Joint2);
        nh.getParam("Joint3", Joint3);
        nh.getParam("Joint4", Joint4);

        //update joint_state
        joint_state.header.stamp = ros::Time::now();
        joint_state.name.push_back("joint1");
        joint_state.position.push_back(Joint1);
        joint_state.name.push_back("joint2");
        joint_state.position.push_back(Joint2);
        joint_state.name.push_back("joint3");
        joint_state.position.push_back(Joint3);
        joint_state.name.push_back("joint4");
        joint_state.position.push_back(Joint4);

        joint_pub.publish(joint_state);
    }
}

int main(int argc, char ** argv)
{
    ros::init(argc, argv, "custom_joint_state_publisher");
    state_publisher_class::StatePublisherClass SPC;
    ros::Rate loop_rate(1000);

    while(ros::ok())
    {
        SPC.run();
        loop_rate.sleep();
    }

    return 1;
}