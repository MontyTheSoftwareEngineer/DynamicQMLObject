import QtQuick 2.0
import QtQuick.Controls 2.12

Rectangle {
    signal hideMeClicked()
    id: secondDialog
    visible: true
    width: parent.width / 2
    height: parent.height / 2
    anchors.centerIn: parent
    color: "blue"

    Button {
        id: hideWindowButton
        anchors.centerIn: parent
        text: "Hide me!"
        onClicked: secondDialog.hideMeClicked()
    }
}
