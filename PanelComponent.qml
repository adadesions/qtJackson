import QtQuick 2.4

PanelComponentForm {
     slider_brush_size.onValueChanged: {
         store.brushSize =  slider_brush_size.value;
     }
}
