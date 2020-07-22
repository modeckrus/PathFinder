#include "PathfinderApp.h"

PathfinderApp* PathfinderApp::_app = nullptr;

PathfinderApp::PathfinderApp(int &argc, char* argv[])
    : QGuiApplication          (argc, argv)
{
    _app = this;
    _msecsElapsedTime.start();
}

PathfinderApp::~PathfinderApp()
{
    // Place shutdown code in _shutdown
    _app = nullptr;
}

void PathfinderApp::_shutdown()
{
    // Close out all Qml before we delete toolbox. This way we don't get all sorts of null reference complaints from Qml.
    // delete _qmlAppEngine;

    // delete _toolbox;
}

void PathfinderApp::_initCommon()
{

}


/// @brief Returns the PathfinderApp object singleton.
PathfinderApp* PfinderApp(void)
{
    return PathfinderApp::_app;
}