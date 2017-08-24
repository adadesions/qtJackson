import QtQuick 2.7
import Ada.Demo 1.0

Page1Form {
    button1.onClicked: {
        console.log("Button Pressed. Entered text: " + demo.userName);
        demo.showImage();
    }
}
