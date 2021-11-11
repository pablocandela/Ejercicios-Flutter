
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class Home extends StatelessWidget{

 final textFontSize = new TextStyle(fontSize: 24); //Define un estilo.

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Representa una pagina entera.
      appBar: AppBar(//Header de la pagina.
        title: Text("Título"),
        centerTitle: true,
      ),
      body: Center(//Contenido de la pagina.
        child: Column( //Widet que acomoda a sus hijos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center, //Propiedad que indica donde se posicionan los hijos de la columna.  
          children: [//Lista de hijos que se dibujan ono debajo de otro.
            Text("Número de clicks:", style: textFontSize),
            Text("0",style: textFontSize)
          ],
        ),
      ),
    );
  }


}