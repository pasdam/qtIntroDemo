import QtQuick 2.0

Rectangle {
    height: parent.height

    border.width: 4

    property alias text: txt.text

    Text {
        id: txt
        anchors.centerIn: parent
    }
}
