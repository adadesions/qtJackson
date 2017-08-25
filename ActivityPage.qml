import QtQuick 2.4
import QtQuick.Dialogs 1.1

ActivityPageForm {
    property bool isLeft: true
    property bool isStartMarking: false

     FileDialog {
            id: fileDialog
            visible: false
            modality: Qt.WindowModal
            folder: shortcuts.desktop
            title: "Choose an facial image"
            nameFilters: [ "Image files (*.png *.jpg)", "All files (*)" ]
            selectedNameFilter: "All files (*)"
            onAccepted: {
                if (isLeft){
                    image_left.source = fileDialog.fileUrl;
                    leftCV.filename = fileDialog.fileUrl;
                }
                else {
                    image_right.source = fileDialog.fileUrl;
                    rightCV.filename = fileDialog.fileUrl;
                }

            }
            onRejected: { console.log("Rejected") }
    }

    button_openfile1.onClicked: {
        isLeft = true;
        fileDialog.open();
    }
    button_openfile2.onClicked: {
        isLeft = false;
        fileDialog.open();
    }
    mouseArea_left.onPressed: {
        if( !isStartMarking )
            isStartMarking = true;

        canvas_left.requestPaint();
        leftCV.markers++;
    }

    canvas_left.onPaint: {
        if( isStartMarking ){
            var xpos = mouseArea_left.mouseX;
            var ypos = mouseArea_left.mouseY;
            var ctx = canvas_left.getContext('2d');
            var brush_size =  store.brushSize;
            var err = (brush_size/2) + 1;
            ctx.fillStyle = "red";
            ctx.ellipse(xpos-err, ypos-err, brush_size, brush_size);
            ctx.fill();
        }
    }
}
