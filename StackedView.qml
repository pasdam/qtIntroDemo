import QtQuick 2.12
import QtQuick.Controls 2.12

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
