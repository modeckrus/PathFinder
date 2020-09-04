#pragma once

#include <QGuiApplication>
#include <QTimer>
#include <QQmlApplicationEngine>
#include <QElapsedTimer>
#include <ortools>

// #include "MAVLinkProtocol.h"

// #include "KmlController.h"

class PathfinderApp : public QGuiApplication
{
    Q_OBJECT
public:

    PathfinderApp(int &argc, char* argv[]);
    ~PathfinderApp();

    /// @brief Perform initialize which is common to both normal application running and unit tests.
    ///         Although public should only be called by main.
    void _initCommon();

    /// Shutdown the application object
    void _shutdown();

     /// Our own singleton
    static PathfinderApp*  _app;

private:

    QElapsedTimer           _msecsElapsedTime;
};

/// @brief Returns the PathfinderApp object singleton.
PathfinderApp* qgcApp(void);
