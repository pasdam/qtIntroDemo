import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 2.12

ApplicationWindow {
    id: root

    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: ToolBar {
        RowLayout {
            anchors.fill: parent

            ToolButton {
                id: backButton

                text: "‹"
                onClicked: stackedView.pop()
            }

            Label {
                text: "Amazing chat"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    Item {
        anchors.fill: parent

        states: [
            State {
                when: root.width >= 400
                PropertyChanges { target: backButton; visible: false }
                PropertyChanges { target: sideView; visible: true }
                PropertyChanges { target: stackedView; visible: false }
            },
            State {
                when: root.width < 400
                PropertyChanges { target: backButton; visible: stackedView.depth > 1 }
                PropertyChanges { target: sideView; visible: false }
                PropertyChanges { target: stackedView; visible: true }
            }
        ]

        SideView {
            id: sideView

            anchors.fill: parent
            visible: false
        }

        StackedView {
            id: stackedView

            anchors.fill: parent
            visible: false
        }
    }
}
