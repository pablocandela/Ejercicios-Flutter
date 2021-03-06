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
      body: Center(//Contenido de la página.
        child: Column( //Widget que acomoda a sus hijos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center, //Propiedad que indica donde se posicionan los hijos de la columna.  
          children: [//Lista de hijos que se dibujan uno debajo de otro.
            Text("Número de clicks:", style: textFontSize),
            Text("0",style: textFontSize)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(//Botón flotante.
        child: Icon(Icons.add), //Se dibuja un icono en el hijo del botón flotante.
        onPressed: () { //Función obligatoria para un botón flotante que se ejecuta cuando es presionado.

        },
      ),
    );
  }


}