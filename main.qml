import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 1360
    height: 800
    title: qsTr("Jackson Project <Dev>")

    PanelComponent {
        id: panelComponent
        x: 0
        y: 72
        width: 200
        height: 728
    }
       Rectangle {
           id: rectangle
           x: 0
           y: 0
           width: 200
           height: 74
           color: "#01579B"
           radius: 0
           border.width: 0

           Text {
               id: text1
               x: 21
               y: 24
               width: 158
               height: 26
               color: "#ffffff"
               text: qsTr("Jackson")
               font.underline: false
               font.italic: true
               font.bold: true
               font.family: "Courier"
               wrapMode: Text.WordWrap
               horizontalAlignment: Text.AlignHCenter
               font.pixelSize: 30
           }
       }

       ActivityPage {
           id: activityPage
           x: 200
           y: 0
       }
 }
