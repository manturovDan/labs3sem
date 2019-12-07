#ifndef ROBOTSCREATE_MOVING_DESCRIBER_H
#define ROBOTSCREATE_MOVING_DESCRIBER_H

#include <deque>

#include "Robot_Scout.h"

namespace robo {
    struct moment {
        Robot_Scout * moving_obj;
        coordinates pos;
        int direction;
        unsigned long int time;
        bool destination;
    };

    class Moving_Describer {
    private:
        std::deque<moment> move_d;
    public:
        Moving_Describer() = default;
        int addStep(moment);
        void printSteps(std::ostream & stream = std::cout);
        void makeSteps(unsigned int);
    };
}


#endif //ROBOTSCREATE_MOVING_DESCRIBER_H
