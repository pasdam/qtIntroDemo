import QtQuick 2.0

Row {
    id: root

    Rectangle {
        width: parent.width * 0.3
        height: parent.height

        border.color: "green"
        border.width: 4

        Text {
            anchors.centerIn: parent
            text: qsTr("Contact list")
        }
    }

    Rectangle {
        width: 2
        height: parent.height

        color: "black"
        opacity: 0.5
    }

    Rectangle {
        width: parent.width * 0.7
        height: parent.height

        border.color: "blue"
        border.width: 4

        Text {
            anchors.centerIn: parent
            text: qsTr("Message list")
        }
    }
}
