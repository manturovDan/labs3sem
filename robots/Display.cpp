#include "Display.h"

namespace dispr {
    Display::Display(robo::Environment_describer * envir) : env(envir) { }

    void Display::show() {
        const int winWidth = 700;
        const int winHeight = 700;
        const int rectSize = 16;

        float up = 0;
        float right = 0;

        sf::RenderWindow window (sf::VideoMode(winWidth, winHeight), "Mobile Robots");
        sf::View view;

        view.setSize(sf::Vector2f(winWidth, winHeight));
        view.setCenter(static_cast<float >(winWidth)/2, static_cast<float>(winHeight)/2);

        window.setFramerateLimit(32);

        float zoom = 0.f;

        unsigned int realTime = 0;


        sf::Texture landNoT;
        landNoT.loadFromFile("../static/land_no.jpg");
        sf::Sprite landNoS(landNoT);

        sf::Texture obsNoT;
        obsNoT.loadFromFile("../static/obs_no.jpg");
        sf::Sprite obsNoS(obsNoT);

        sf::Texture intNoT;
        intNoT.loadFromFile("../static/int_no.jpg");
        sf::Sprite intNoS(intNoT);

        sf::Texture comcT;
        comcT.loadFromFile("../static/com_cen.jpg");
        sf::Sprite comcS(comcT);

        sf::Texture obsT;
        obsT.loadFromFile("../static/observ.jpg");
        sf::Sprite obsS(obsT);

        while(window.isOpen()) {
            view.zoom(1.f + zoom);
            if (zoom != 0.f) {
                zoom = 0.f;
            }
            window.setView(view);
            sf::Event event;
            while (window.pollEvent(event)) {
                if (event.type == sf::Event::Closed)
                    window.close();
            }

            view.setCenter(static_cast<float >(winWidth)/2 + right, static_cast<float>(winHeight)/2 - up);

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::PageUp)) {
                zoom += 0.1f;
            }
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::PageDown)) {
                zoom -= 0.1f;
            }

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)) {
                //if (up < rectSize*env->getHeight() - winHeight)
                    up += 10;
            }
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)) {
                //if (up > 0)
                    up -= 10;
            }
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right)) {
                //if (right < rectSize*env->getWidth() - winWidth)
                    right += 10;
            }
            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left)) {
                //if (right > 0)
                    right -= 10;
            }

            //std::cout << "PARAMS:" << zoom << " " << up << " " << right << std::endl;

            window.clear(sf::Color::White);

            for (unsigned int j = 0; j < env->getHeight(); ++j) {
                for (unsigned int i = 0; i < env->getWidth(); ++i) {
                    landNoS.setPosition(static_cast<float>(i)*rectSize, winHeight - rectSize -static_cast<float>(j)*rectSize);
                    window.draw(landNoS);
                }
            }

            for(robo::Env_Consistent_Iter it = env->begin(); it != env->end(); ++it) {
                float x = (*it)->getX();
                float y = (*it)->getY();

                if(!strcmp(typeid(**it).name(), "N4robo8ObstacleE")) {
                    obsNoS.setPosition(static_cast<float>(x)*rectSize, winHeight - rectSize -static_cast<float>(y)*rectSize);
                    window.draw(obsNoS);
                }
                if(!strcmp(typeid(**it).name(), "N4robo14Interest_PointE")) {
                    intNoS.setPosition(static_cast<float>(x)*rectSize, winHeight - rectSize -static_cast<float>(y)*rectSize);
                    window.draw(intNoS);
                }
                if(!strcmp(typeid(**it).name(), "N4robo14Command_CenterE")) {
                    comcS.setPosition(static_cast<float>(x)*rectSize, winHeight - rectSize -static_cast<float>(y)*rectSize);
                    window.draw(comcS);
                }
                if(!strcmp(typeid(**it).name(), "N4robo18Observation_CenterE")) {
                    obsS.setPosition(static_cast<float>(x)*rectSize, winHeight - rectSize -static_cast<float>(y)*rectSize);
                    window.draw(obsS);
                }
            }

            unsigned int curTime = env->getTime();
            if (realTime < curTime) {
                std::cout << "UPDDD" << std::endl;
                realTime = curTime;
            }


            window.display();
        }
    }

    void Display::justTimer() {
        using namespace std::chrono_literals;
        std::cout << "Hello waiter\n" << std::flush;
        int i = 1;
        while(true) {
            auto start = std::chrono::high_resolution_clock::now();
            std::this_thread::sleep_for(2s);
            auto end = std::chrono::high_resolution_clock::now();
            std::chrono::duration<double, std::milli> elapsed = end - start;
            std::cout << "Waited " << elapsed.count() << " ms\n";
            env->plusTime();
            if (i++ == 1000)
                break;
        }
    }

    void Display::run() {
        std::thread trDisp = std::thread(&Display::show, this);
        std::thread trInte = std::thread(&Display::justTimer, this);
        trDisp.join();
        trInte.join();
    }
}