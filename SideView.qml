import QtQuick 2.0

Row {
    id: root

    Placeholder {
        width: parent.width * 0.3
        border.color: "green"
        text: qsTr("Contact list")
    }

    Rectangle {
        width: 2
        height: parent.height

        color: "black"
        opacity: 0.5
    }

    Placeholder {
        width: parent.width * 0.7
        border.color: "blue"
        text: qsTr("Message list")
    }
}
