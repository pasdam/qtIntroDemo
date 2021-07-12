import QtQuick 2.0

Placeholder {
    id: root

    width: parent.width * 0.3
    border.color: "green"
    text: qsTr("Contact list")

    signal contactClicked(int index)

    MouseArea {
        anchors.fill: parent

        onClicked: root.contactClicked(0)
    }
}
