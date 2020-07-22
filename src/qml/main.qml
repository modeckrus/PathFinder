import QtQuick 2.15
import QtQuick.Window 2.15
import QtLocation 5.6
import QtPositioning 5.6
import MainWindow 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("PathFinder")
    
    // all flags must be set at once! Check docs for
    // al the possibilities, some of them interesting 
    // flags: Qt.WindowStaysOnTopHint	

    MainWindow {
        anchors.centerIn: parent
        z:                mainMap.z + 1
    }

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        id:             mainMap
        anchors.fill:   parent
        plugin:         mapPlugin
    }
}
