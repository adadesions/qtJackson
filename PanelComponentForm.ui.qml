import QtQuick 2.4
import QtQuick.Controls 2.1

Item {
    width: 200
    height: 728
    property alias num_brush_size: num_brush_size
    property alias  slider_brush_size:  slider_brush_size
    
    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 200
        height: 728
        color: "#eeeeee"
        radius: 1
        border.color: "#00000000"
        border.width: 2
    }

    Text {
        id: left_section
        x: 14
        y: 21
        color: "#0288d1"
        text: qsTr("Left Section")
        font.bold: true
        font.family: "Times New Roman"
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 23

        Item {
            id: text_group2
            x: 18
            y: 102
            width: 174
            height: 46
            Text {
                id: text_marker1
                x: 17
                y: 21
                width: 151
                height: 24
                color: "#616161"
                text: leftCV.strMarkers
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                font.bold: false
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 14
            }

            Text {
                id: label_markers1
                x: 0
                y: 0
                width: 168
                height: 15
                color: "#505050"
                text: qsTr("#Markers")
                font.family: "Times New Roman"
                wrapMode: Text.WordWrap
                renderType: Text.QtRendering
                font.bold: true
                font.pixelSize: 18
            }
        }

        Item {
            id: text_group1
            x: 18
            y: 39
            width: 174
            height: 46

        }

        Text {
            id: text_filename1
            x: 35
            y: 62
            width: 151
            height: 25
            color: "#616161"
            text: leftCV.shortname
            wrapMode: Text.WordWrap
            font.bold: false
            font.family: "Courier"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 14
        }

        Text {
            id: label_filename1
            x: 18
            y: 39
            width: 168
            height: 15
            color: "#505050"
            text: qsTr("Filename")
            font.bold: true
            font.family: "Times New Roman"
            renderType: Text.QtRendering
            wrapMode: Text.WordWrap
            font.pixelSize: 18
        }



    }

    Text {
        id: right_section
        x: 14
        y: 199
        color: "#0288d1"
        text: qsTr("Right Section")
        font.family: "Times New Roman"
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pixelSize: 23

        Item {
            id: text_group3
            x: 18
            y: 40
            width: 174
            height: 46
            Text {
                id: text_filename2
                x: 17
                y: 24
                width: 151
                height: 24
                color: "#616161"
                text: rightCV.shortname
                wrapMode: Text.WordWrap
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                font.bold: false
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 14
            }

            Text {
                id: label_filename2
                x: 0
                y: 0
                width: 168
                height: 15
                color: "#505050"
                text: qsTr("Filename")
                font.family: "Times New Roman"
                wrapMode: Text.WordWrap
                renderType: Text.QtRendering
                font.bold: true
                font.pixelSize: 18
            }
        }

        Item {
            id: text_group4
            x: 18
            y: 103
            width: 174
            height: 46
            Text {
                id: text_marker2
                x: 17
                y: 21
                width: 151
                height: 24
                color: "#616161"
                text: rightCV.strMarkers
                font.family: "Courier"
                verticalAlignment: Text.AlignVCenter
                font.bold: false
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 14
            }

            Text {
                id: label_markers2
                x: 0
                y: 0
                width: 168
                height: 15
                color: "#505050"
                text: qsTr("#Markers")
                wrapMode: Text.WordWrap
                font.family: "Times New Roman"
                renderType: Text.QtRendering
                font.bold: true
                font.pixelSize: 18
            }
        }
    }

    Text {
        id: left_section1
        x: 14
        y: 374
        color: "#0288d1"
        text: qsTr("Control Panels")
        font.family: "Times New Roman"
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pixelSize: 23
    }

    Text {
        id: label_brush_size
        x: 32
        y: 413
        width: 87
        height: 20
        color: "#505050"
        text: qsTr("Brush Size :")
        font.bold: true
        font.family: "Times New Roman"
        font.pixelSize: 18
    }

    Text {
        id: num_brush_size
        x: 120
        y: 414
        width: 40
        height: 21
        color: "#505050"
        text: store.brushSize
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Slider {
        id: slider_brush_size
        x: 32
        y: 432
        width: 160
        height: 48
        to: 20
        from: 5
        stepSize: 1
        value: store.brushSize
    }

    Button {
        id: button_autoMesh
        x: 32
        y: 485
        width: 156
        height: 41
        text: qsTr("Auto Mesh")
        autoExclusive: false
        autoRepeat: true
        checked: false
        checkable: true
        highlighted: false
    }



    
}
