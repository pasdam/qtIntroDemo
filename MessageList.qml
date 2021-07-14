import QtQuick 2.0

Item {
    width: parent.width * 0.7

    property string uid

    MessagesModel{
        id: messagesModel
    }

    ListView {
        id: listview

        anchors.fill: parent

        model: messagesModel.retrieveMessages(uid)

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
}
