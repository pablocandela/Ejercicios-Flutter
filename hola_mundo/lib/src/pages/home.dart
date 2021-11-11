
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
        child: Text("Hola Mundo", style: textFontSize),
      ),
    );
  }


}