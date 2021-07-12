import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    header: ToolBar {
        RowLayout {
            anchors.fill: parent

            Label {
                text: qsTr("Amazing chat")
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    SideView {
        anchors.fill: parent
    }
}
