import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Item {
    id: root

    width: parent.width * 0.7

    property string uid

    MessagesModel{
        id: messagesModel
    }

    ListView {
        id: listview

        anchors.fill: parent
        anchors.bottomMargin: 50

        model: messagesModel.retrieveMessages(root.uid)

        clip: true

        delegate: Item {
            height: childrenRect.height
            width: parent.width

            Rectangle {
                id: messageBng

                anchors.left: model.sender ? undefined : parent.left
                anchors.leftMargin: 10
                anchors.right: model.sender ? parent.right : undefined
                anchors.rightMargin: 10

                height: messageLabel.height
                width: messageLabel.width + 20

                color: "green"
                radius: 10
            }

            Text {
                id: messageLabel

                anchors.horizontalCenter: messageBng.horizontalCenter

                height: 50

                verticalAlignment: Text.AlignVCenter

                color: "white"

                text: model.message
            }

            Text {
                anchors.top: messageBng.bottom
                anchors.left: model.sender ? undefined : parent.left
                anchors.leftMargin: 10
                anchors.right: model.sender ? parent.right : undefined
                anchors.rightMargin: 10
                height: 40

                horizontalAlignment: model.sender ? Text.AlignLeft : Text.AlignRight

                text: model.dateTime
            }
        }
    }

    Rectangle {
        width: parent.width
        height: 2

        anchors.bottom: listview.bottom

        visible: root.uid ? true : false

        color: "black"
        opacity: 0.5
    }

    RowLayout {
        anchors.top: listview.bottom
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        height: 50

        visible: root.uid ? true : false

        TextInput {
            id: input

            height: parent.height

            Layout.fillWidth: true
        }

        Button {
            width: height
            height: parent.height-20
            background: Rectangle {
                color: "darkgreen"
                radius: 10
            }
            text: ">"

            onClicked: messagesModel.sendMessage(root.uid, input.text)
        }
    }
}
