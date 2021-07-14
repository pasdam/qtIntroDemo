import QtQuick 2.0
import QtQuick.Layouts 1.12

ListView {
    id: root

    width: parent.width * 0.3

    signal contactClicked(var uid)

    readonly property var _COLORS: [
        "blue",
        "green",
        "red",
        "purple",
        "cyan"
    ]

    delegate: MouseArea {
        height: 80
        width: parent.width

        onClicked: contactClicked(model.uid)

        RowLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 20

            Rectangle {
                id: icon

                height: parent.height * 0.8
                width: height

                radius: height * 0.5

                color: root._COLORS[index % root._COLORS.length]
            }

            Text {
                height: parent.height
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                text: model.name
            }
        }
    }

    model: ListModel {
        ListElement {
            uid: "1"
            name: "Bill Smith"
        }
        ListElement {
            uid: "2"
            name: "John Brown"
        }
        ListElement {
            uid: "3"
            name: "Sam Wise"
        }
    }
}
