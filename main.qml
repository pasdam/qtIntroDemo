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

            Label {
                text: "Amazing chat"
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
