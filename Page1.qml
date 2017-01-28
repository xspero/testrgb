import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.2

Page1Form {
    width: 800
    height: 480

    colorDialog.onAccepted: {
        textoRGB.text= colorDialog.color;

    }

    selectRGB.onClicked: {


        colorDialog.open()



        //jeje


}


    botonRGB.onClicked: {
        console.log("el color es: " + textoRGB.text);
}

    radioButton3.onClicked: {


        onClicked: {serialito.iniciarSerial();}
}
    progressBar.onValueChanged: {

        serialito.enviardimmer(dial.position*100);

}


    dial.onPositionChanged: {

        //console.log(dial.position);


}




    porcentaje.onTextChanged: {


        //onTextChanged: serialito.test()


      //console.log(dial.value);

}



    switch3.onClicked: {
        serialito.rojoRGB();
    }

    switch2.onClicked: {
        serialito.azulRGB();
    }






    //serialito.test:

    Component.onCompleted: {
        //serialito.test();
        console.log("se inicio correctamente ");
    }
}
