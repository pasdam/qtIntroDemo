import QtQuick 2.0

Row {
    id: root

    ContactList {
        width: parent.width * 0.3
        height: parent.height

        onContactClicked: messageList.uid = uid
    }

    Rectangle {
        width: 2
        height: parent.height

        color: "black"
        opacity: 0.5
    }

    MessageList {
        id: messageList

        width: parent.width * 0.7
        height: parent.height
    }
}
