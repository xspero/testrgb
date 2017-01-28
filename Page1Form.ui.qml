import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Dialogs 1.2

Item {
    width: 800
    property alias colorseleccionado: colorseleccionado
    property alias selectRGB: selectRGB
    property alias textoRGB: textoRGB
    property alias botonRGB: botonRGB
    property alias radioButton3: radioButton3
    property alias progressBar: progressBar
    property alias dial: dial
    property alias porcentaje: porcentaje
    property alias poercentaje: porcentaje
    property alias icondimmer: icondimmer
    property alias iconfoco: iconfoco
    property alias switch3: switch3
    property alias switch2: switch2
    property alias colorDialog: colorDialog
    z: -1







    RadioButton {
        id: radioButton3
        x: 644
        y: 24
        width: 110
        height: 49
        text: qsTr("iniciar")
    }



    Image {
        id: iconRGB
        x: 546
        y: 124
        width: 27
        height: 28

        Text {
            id: text4
            x: 33
            y: -4
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("RGB")
            font.pixelSize: 30
            z: 2
        }

        Switch {
            id: switch3
            x: 63
            y: 39
            text: qsTr("rojo")
            antialiasing: false
        }

        Switch {
            id: switch2
            x: -29
            y: 32
            text: qsTr("azul")
            scale: 1
            antialiasing: false
        }

        Button {
            id: selectRGB
            x: 126
            y: -8
            text: qsTr("Seleccionar")
            //onClicked: colorDialog.Open

            ColorDialog {
                id: colorDialog
                title: "Please choose a color"

                //Component.onCompleted: visible = true

                //Component.onCompleted: visible = false
            }


        }

        RowLayout {
            x: -27
            y: 80
            anchors.horizontalCenterOffset: 60
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 93
            anchors.top: parent.top

            TextField {
                id: textoRGB
                placeholderText: qsTr("Text Field")
            }

            Button {
                id: botonRGB
                text: qsTr("Press Me")
            }
        }

        Rectangle {
            id: colorseleccionado
            x: 177
            y: 48
            width: 35
            height: 23
            color: colorDialog.color
        }

        source: "res/icon_rgb.png"
        z: 3
    }

    Image {
        id: iconfoco
        x: 296
        y: 178
        width: 21
        height: 27
        z: 2
        source: "res/foco.png"

        Text {
            id: text1
            x: 35
            y: -5
            width: 76
            height: 37
            color: "#ffffff"
            text: qsTr("Focos")
            z: 2
            font.pixelSize: 30
        }

        SwitchDelegate {
            id: switchDelegate
            x: -19
            y: 36
            text: qsTr("Foco 1")
            z: 3
        }
    }















    Image {
        id: icondimmer
        x: 518
        y: 310
        width: 25
        height: 25
        z: 3
        source: "res/icon_dimerc.png"

        Text {
            id: text3
            x: 33
            y: -7
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Dimmer")
            font.pixelSize: 30
            z: 2
        }

        ProgressBar {
            id: progressBar
            x: -25
            y: 51
            width: 168
            height: 4
            to: 100
            value: dial.value*100
        }

        Dial {
            id: dial
            x: 165
            y: -15
        }

        Text {
            id: text7
            x: 96
            y: 61
            width: 64
            height: 24
            color: "#ffffff"
            text: "%"
            font.pixelSize: 20
        }

        Text {
            id: porcentaje
            x: 26
            y: 61
            width: 64
            height: 24
            color: "#ffffff"
            text: dial.position*100
            font.family: "Verdana"
            font.pixelSize: 20


        }

    }



    Text {
        id: textoescenas
        x: 41
        y: 111
        width: 97
        height: 24
        color: "#ffaa00"
        text: qsTr("Personalizar ")
        z: 5
        font.pixelSize: 18

        RadioButton {
            id: radioButton
            x: 1
            y: 56
            width: 110
            height: 49
            text: qsTr("Clases")
        }

        RadioButton {
            id: radioButton1
            x: 1
            y: 105
            text: qsTr("Proyección")
        }

        RadioButton {
            id: radioButton2
            x: 0
            y: 151
            text: qsTr("Apagar Todo")
        }

        Text {
            id: text5
            x: 17
            y: 26
            width: 66
            height: 14
            color: "#ffaa00"
            text: qsTr("Escenas")
            renderType: Text.NativeRendering
            font.pixelSize: 18
        }

        Button {
            id: button
            x: 19
            y: 238
            text: qsTr("Guardar")
        }
    }




    Image {
        id: iconecram
        x: 259
        y: 310
        width: 27
        height: 22
        Text {
            id: text2
            x: 43
            y: -8
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Ecram")
            font.pixelSize: 30
            z: 2
        }

        Switch {
            id: switch1
            x: 60
            y: 47
            text: qsTr("Switch")
        }
        source: "res/icon_cortina.png"
        z: 2
    }


    Rectangle {
        id: fondo
        x: 1
        y: 89
        width: 800
        height: 394
        color: "#191919"
        z: -2

        Rectangle {
            id: rectangle4
            x: 0
            y: 345
            width: 800
            height: 94
            color: "#303030"
            z: 1
        }
    }







}
