#include <GL/freeglut.h>
#include "GlutApp.h"
#include "Controller.h"

using namespace std;


int main(int argc,char** argv) {

    GlutApp* app = new GlutApp(argc, argv);

    Controller* myController = new Controller();

    app->setController(myController);

    app->setTitle("Microsoft Paint Clone");

    app->run();
    
    return 0;
}
