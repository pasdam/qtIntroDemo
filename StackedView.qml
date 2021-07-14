import QtQuick 2.12
import QtQuick.Controls 2.12

StackView {
    id: root

    initialItem: contactList

    property int transitionDuration: 400

    pushEnter: Transition {
        SequentialAnimation {
            PauseAnimation {
                duration: transitionDuration
            }
            PropertyAnimation {
                property: "scale"
                from: 0
                to: 1
                duration: transitionDuration
            }
        }

    }
    pushExit: Transition {
        PropertyAnimation {
            property: "scale"
            from: 1
            to: 0
            duration: transitionDuration
        }
    }
    popEnter: Transition {
        SequentialAnimation {
            PauseAnimation {
                duration: transitionDuration
            }
            PropertyAnimation {
                property: "scale"
                from: 0
                to: 1
                duration: transitionDuration
            }
        }
    }
    popExit: Transition {
        PropertyAnimation {
            property: "scale"
            from: 1
            to: 0
            duration: transitionDuration
        }
    }

    ContactList {
        id: contactList

        width: root.width
        height: root.height

        onContactClicked: root.push(messageList, {uid: uid})
    }

    MessageList {
        id: messageList

        width: root.width
        height: root.height

        visible: false

        scale: 0
    }
}
