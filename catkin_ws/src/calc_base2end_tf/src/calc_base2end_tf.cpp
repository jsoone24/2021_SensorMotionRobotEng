#include <calc_base2end_tf.hpp>

namespace calc_base2end_TF {
    CalcBase2endTF::CalcBase2endTF() {
        joint_state_sub_ = nh.subscribe("/joint_states", 1, &CalcBase2endTF::callbackJointStates, this);
    }

    CalcBase2endTF::~CalcBase2endTF() {

    }

    void CalcBase2endTF::callbackJointStates(const sensor_msgs::JointStatePtr &ptr) {
        Eigen::Matrix4d final_mat;
        final_mat << 1, 0, 0, 0,
                0, 1, 0, 0,
                0, 0, 1, 0,
                0, 0, 0, 1;

        // todo
        // get vector value
        //wrist_3_joint ptr->position[5]
        //wrist_2_joint ptr->position[4]
        //wrist_1_joint ptr->position[3]
        //elbow_joint ptr->position[2]
        //shoulder_lift_joint ptr->position[1]
        //shoulder_pan_joint ptr->position[0]

        final_mat = final_mat * RotZ() * TransZ() * TransX() * RotX();  //wrist_3_joint -> wrist_2_joint
        final_mat = final_mat * RotZ() * TransZ() * TransX() * RotX();  //wrist_2_joint -> wrist_1_joint
        final_mat = final_mat * RotZ() * TransZ() * TransX() * RotX();  //wrist_1_joint -> elbow_joint
        final_mat = final_mat * RotZ() * TransZ() * TransX() * RotX();  //elbow_joint -> shoulder_lift_joint
        final_mat = final_mat * RotZ() * TransZ() * TransX() * RotX();  //shoulder_lift_joint -> shoulder_pan_joint

        std::cout << "-------- Homogenous Matrix from end-effector to base using D-H parameters ---------" << std::endl;
        std::cout << final_mat << std::endl;

        std::cout << "-------- validation ---------" << std::endl;
        Eigen::Vector4d end_effector_origin(0, 0, 0, 1);
        Eigen::Vector4d transformed_origin_on_base;

        transformed_origin_on_base = final_mat * end_effector_origin;

        double x = transformed_origin_on_base[0];
        double y = transformed_origin_on_base[1];
        double z = transformed_origin_on_base[2];

        std::cout << "calc [ x, y, z ] : [ " << x << ", " << y << ", " << z << " ]" << std::endl;
        // compare tool0 TF

    }

    Eigen::Matrix4d CalcBase2endTF::RotZ(double rad) {
        Eigen::Matrix4d mat;

        mat << cos(rad), -sin(rad), 0, 0,
                sin(rad), cos(rad), 0, 0,
                0, 0, 1, 0,
                0, 0, 0, 1;

        return mat;
    }

    Eigen::Matrix4d CalcBase2endTF::TransZ(double d) {
        Eigen::Matrix4d mat;

        mat << 1, 0, 0, 0,
                0, 1, 0, 0,
                0, 0, 1, d,
                0, 0, 0, 1;

        return mat;
    }

    Eigen::Matrix4d CalcBase2endTF::TransX(double a) {
        Eigen::Matrix4d mat;

        mat << 1, 0, 0, a,
                0, 1, 0, 0,
                0, 0, 1, 0,
                0, 0, 0, 1;

        return mat;
    }

    Eigen::Matrix4d CalcBase2endTF::RotX(double rad) {
        Eigen::Matrix4d mat;

        mat << 1, 0, 0, 0,
                0, cos(rad), -sin(rad), 0,
                0, sin(rad), cos(rad), 0,
                0, 0, 0, 1;

        return mat;
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "calc_base2end_TF");

    calc_base2end_TF::CalcBase2endTF CBT;

    ros::spin();
}