import QtQuick 2.4
import QtQuick.Dialogs 1.1

ActivityPageForm {
    property bool isLeft: true

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
}
