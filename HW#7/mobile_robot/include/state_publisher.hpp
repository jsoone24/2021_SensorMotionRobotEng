//
// Created by jongsoo on 21. 5. 4..
//

#ifndef SRC_STATE_PUBLISHER_HPP
#define SRC_STATE_PUBLISHER_HPP

namespace state_publisher_class {
    class StatePublisherClass {
    public:
        StatePublisherClass();

        ~StatePublisherClass();

        void run();

    private:
        float Joint1;
        float Joint2;
        float Joint3;
        float Joint4;

        ros::NodeHandle nh;
        ros::Publisher joint_pub;
    };
}

#endif //SRC_STATE_PUBLISHER_HPP
