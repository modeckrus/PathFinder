QT += quick

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/cpp/main.cpp \
        src/cpp/PathfinderApp/PathfinderApp.cpp  \
        src/cpp/example/assignment_mip.cpp


HEADERS += \
        src/cpp/PathfinderApp/PathfinderApp.h 

RESOURCES += src/qml/qml.qrc

TRANSLATIONS += \
    Pathfinder_en_US.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# or-tools stuff

ORTOOLS_PATH = /home/modeck/Documents/cpp/qt/PathFinder/or-tools/

INCLUDEPATH += $${ORTOOLS_PATH}/include
LIBS += -L$${ORTOOLS_PATH}/lib -lCbc -lglog -lgflags -lCbcSolver -lCbc -lOsiCbc -lCgl -lClpSolver -lClp -lOsiClp -lOsi -lCoinUtils -lortools -lz -lrt -lpthread

