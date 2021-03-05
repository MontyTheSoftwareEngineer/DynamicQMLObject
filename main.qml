import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: root
    width: 1024
    height: 680
    visible: true
    title: qsTr("Dynamic QML Object")

    Rectangle {
        id: mainBackground
        color: "lightgray"
        anchors.fill: parent
    }

    Text {
        id: mainLabel
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 20
        }

        color: "black"
        font.pixelSize: 18
        text: "Some Label"
    }

    Button {
        id: mainButton
        anchors.centerIn: parent
        text: "Click Me"

        onClicked: secondDialog.visible = true
    }

    Rectangle {
        id: secondDialog
        visible: false
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent
        color: "blue"

        Button {
            id: hideWindowButton
            anchors.centerIn: parent
            text: "Hide me!"
            onClicked: secondDialog.visible = false
        }
    }
}
