#include "Observation_Center.h"
#include "Sensor.h"

namespace robo {
    Observation_Center::Observation_Center(unsigned int ports, unsigned int consumption, int price, std::vector<Module *> & mods,
                                           std::string & desc, coordinates pos) : Map_Object(pos), description(desc), cost(price), countPorts(ports), energyConsumption(consumption), appeared(true) {
        initModules(mods);
    }

    void Observation_Center::initModules(const std::vector<Module *> & modul) {
        if (countPorts < modul.size())
            throw std::invalid_argument("Robot has too many modules");

        for (auto itm : modul) {
            modules.push_back((*itm).copy());
        }
    }

    void Observation_Center::checkFree() {
        if (getCountModules() >= getCountPorts())
            throw std::invalid_argument("Count of modules exceeds count of ports");
    }

    std::string Observation_Center::whoami() {
        std::stringstream ss;
        ss << "Object : Observation_Center: {" << position.x << ", " << position.y << "}\nDesc: '" << description << "';\n"
                                           "Consumption: " << energyConsumption << ";\nCost: " << cost << ";\n"
                                           "PortsCount: " << countPorts << ";\nAppeared: " << appeared << std::endl;
        return ss.str();
    }

    void Observation_Center::determineCorers(int & top_cor, int & left_cor, int & bottom_cor, int & right_cor, unsigned int rad) {
        top_cor = position.y + rad;
        if (top_cor >= env->getHeight())
            top_cor = env->getHeight() - 1;

        left_cor = position.x - rad;
        if (left_cor < 0)
            left_cor = 0;

        bottom_cor = position.y - rad;
        if (bottom_cor < 0)
            bottom_cor = 0;

        right_cor = position.x + rad;
        if (right_cor >= env->getWidth())
            right_cor = env->getWidth() - 1;
    }

    int Observation_Center::look() {
        for (auto & module : modules) {
            if(!strcmp(typeid(*module).name(), "N4robo6SensorE") && module->getActive()) {
                auto * sens = static_cast<robo::Sensor *>(module);

                std::cout << "Active Senor rad = " << sens->getRadius() << " dir = " << sens->getDirection() << " angle = " << sens->getAngle() << std::endl;

                unsigned int real_dir = sens->getDirection(); //if will be direction of robot

                int top_cor, left_cor, bottom_cor, right_cor;
                determineCorers(top_cor, left_cor, bottom_cor, right_cor, sens->getRadius());

                if (sens->getAngle() == 2) {
                    for (int h = top_cor; h >= bottom_cor; --h) {
                        for (int w = left_cor; w <= right_cor; ++w) {
                            if (getX() == w && getY() == h)
                                std::cout << " ########## ";
                            else
                                std::cout << " { " << w << ", " << h << " } ";
                        }
                        std::cout << std::endl;
                    }
                }
                else {
                    if (real_dir == 0) { //top
                        for (int h = top_cor; h >= position.y + 1; --h) {
                            for (int w = left_cor; w <= right_cor; w++) {
                                std::cout << " { " << w << ", " << h << " } ";
                            }
                            std::cout << std::endl;
                        }

                        if (sens->getAngle() > 0) {
                            for (int h = position.y; h >= bottom_cor; --h) {
                                for (int w = left_cor; w < position.x; ++w) {
                                    std::cout << " { " << w << ", " << h << " } ";
                                }
                                std::cout << std::endl;
                            }

                        }
                    }
                    else if (real_dir == 1) { // left
                        for (int h = top_cor; h >= bottom_cor; --h) {
                            for (int w = left_cor; w < position.x; ++w) {
                                std::cout << " { " << w << ", " << h << " } ";
                            }
                            std::cout << std::endl;
                        }
                        std::cout << std::endl;
                        if (sens->getAngle() > 0) {
                            for (int h = position.y-1; h >= bottom_cor; --h) {
                                for (int w = position.x; w < right_cor; ++w) {
                                    std::cout << " { " << w << ", " << h << " } ";
                                }
                                std::cout << std::endl;
                            }
                        }
                    }
                    else if (real_dir == 2) { //bottom
                        for (int h = position.y-1; h >= bottom_cor; --h) {
                            for (int w = left_cor; w <= right_cor; ++w) {
                                std::cout << " { " << w << ", " << h << " } ";
                            }
                            std::cout << std::endl;
                        }
                        std::cout << std::endl;
                        if (sens->getAngle() > 0) {
                            for (int h = top_cor; h >= position.y; --h) {
                                for (int w = position.x+1; w <= right_cor; ++w) {
                                    std::cout << " { " << w << ", " << h << " } ";
                                }
                                std::cout << std::endl;
                            }
                        }
                    }
                    else { //right
                        for (int h = top_cor; h >= bottom_cor; --h) {
                            for (int w = position.x+1; w <= right_cor; ++w) {
                                std::cout << " { " << w << ", " << h << " } ";
                            }
                            std::cout << std::endl;
                        }
                    }

                    std::cout << std::endl;
                    if (sens->getAngle() > 0) {
                        for (int h = top_cor; h > position.y; --h) {
                            for (int w = left_cor; w <= position.x; ++w) {
                                std::cout << " { " << w << ", " << h << " } ";
                            }
                            std::cout << std::endl;
                        }
                    }
                }
            }
        }
    }
}