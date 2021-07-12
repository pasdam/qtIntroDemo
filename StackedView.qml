import QtQuick
import QtQuick.Controls

StackView {
    id: root

    initialItem: contactList

    ContactList {
        id: contactList

        width: root.width
        height: root.height

        visible: false

        onContactClicked: root.push(messageList)
    }

    MessageList {
        id: messageList

        width: root.width
        height: root.height

        visible:false
    }
}
