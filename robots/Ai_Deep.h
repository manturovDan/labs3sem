#ifndef ROBOTSCREATE_AI_DEEP_H
#define ROBOTSCREATE_AI_DEEP_H

#include <map>

#include "robot.h"
#include "Managing.h"

namespace robo {
    struct map_point {
        Map_Object * iam;
        bool top; //maybe is excess
        bool left;
        bool bottom;
        bool right;
    };

    class Ai_Deep {
    public:
        Ai_Deep() = delete;
        explicit Ai_Deep(Environment_describer *);
        void add_point(Map_Object *);
        void print(std::ostream & stream = std::cout);
        void researchMap();
        void connectResult(const std::map<coordinates, Map_Object *> &);
        void print_d(int, int, std::ostream & stream = std::cout);
    private:
        std::map<coordinates, map_point> ai_dict;
    };
}


#endif //ROBOTSCREATE_AI_DEEP_H
