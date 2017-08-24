import QtQuick 2.4
import QtQuick.Controls 2.1

Item {
    id: item1
    width: 1160
    height: 615
    property alias image_right: image_right
    property alias image_left: image_left
    property alias button_openfile1: button_openfile1
    property alias button_openfile2: button_openfile2
    property alias text1: text1


    Rectangle {
        id: background
        width: 1160
        height: 615
        color: "#263238"
    }

    Item {
        id: tabbar_left
        x: 0
        y: 0
        width: 526
        height: 49

        Rectangle {
            id: bar
            x: 34
            y: 17
            width: 483
            height: 41
            color: "#464646"
            radius: 10
        }

        Text {
            id: text1
            x: 169
            y: 25
            width: 203
            height: 18
            color: "#ffffff"
            text: qsTr("Left Facial")
            font.bold: true
            font.family: "Verdana"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            scale: 1
            wrapMode: Text.WordWrap
            elide: Text.ElideMiddle
            font.pixelSize: 16
        }

        Button {
            id: button_openfile1
            x: 415
            y: 17
            width: 87
            height: 32
            text: qsTr("Open...")
            highlighted: true
        }
    }
    Item {
        id: tabbar_right
        x: 526
        y: 0
        width: 526
        height: 49
        Rectangle {
            id: bar1
            x: 40
            y: 17
            width: 483
            height: 41
            color: "#464646"
            radius: 10
        }

        Text {
            id: text2
            x: 169
            y: 25
            width: 203
            height: 18
            color: "#ffffff"
            text: qsTr("Right Facial")
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideMiddle
            verticalAlignment: Text.AlignVCenter
            font.family: "Verdana"
            font.bold: true
            font.pixelSize: 16
            scale: 1
            wrapMode: Text.WordWrap
        }

        Button {
            id: button_openfile2
            x: 415
            y: 17
            width: 87
            height: 32
            text: qsTr("Open...")
            highlighted: true
        }
    }

    Row {
        id: row
        height: 620
        rotation: 0
        scale: 1
        anchors.rightMargin: 0
        anchors.leftMargin: 35
        anchors.bottomMargin: 100
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.topMargin: 50
        spacing: 50

        Image {
            id: image_left
            width: 482
            height: 540
            fillMode: Image.PreserveAspectCrop
            source: "leonado.jpg"
        }

        Image {
            id: image_right
            width: 482
            height: 540
            fillMode: Image.PreserveAspectCrop
            source: "leonado.jpg"
        }

    }

}
