import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: ToolBar {
        RowLayout {
            anchors.fill: parent

            ToolButton {
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

    StackedView {
        id: stackedView

        anchors.fill: parent
    }
}
