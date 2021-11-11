import 'dart:ffi';

import 'package:flutter/material.dart';

class Count extends StatefulWidget{
  
  @override
  createState() {
    return _CountState();
  }
}

 class _CountState extends State<Count>{

  final _textFontSize = new TextStyle(fontSize: 24); //Define un estilo para el tamaño del texto.
  int _count = 0; //variable que guarda el contador.

  @override
  Widget build(BuildContext context) {
    return Scaffold(//Representa una pagina entera.
      appBar: AppBar(//Header de la pagina.
        title: Text("State"),
        centerTitle: true,
      ),
      body: Center(//Contenido de la página.
        child: Column( //Widget que acomoda a sus hijos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center, //Propiedad que indica donde se posicionan los hijos de la columna.  
          children: [//Lista de hijos que se dibujan uno debajo de otro.
            Text("Número de clicks:", style: _textFontSize),
            Text("$_count",style: _textFontSize)
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width : 30.0), //Dibuja un espacio entre los widgets.
        FloatingActionButton(//Botón flotante.
          child: Icon(Icons.refresh),//Se dibuja un icono en el hijo del botón flotante.
          onPressed: () { //Función obligatoria para un botón flotante que se ejecuta cuando es presionado.
            setState(() {//Redibuja el widget.
             resetCounter();//Se reinicia el contador al dar click en el botón.
            }); 
          },
        ),
        Expanded(child: SizedBox()), //Expande un widget lo máximo posible.
        FloatingActionButton(//Botón flotante.
          child: Icon(Icons.remove), //Se dibuja un icono en el hijo del botón flotante.
          onPressed: () { //Función obligatoria para un botón flotante que se ejecuta cuando es presionado.
            setState(() {//Redibuja el widget.
              decreaseCounter(); 
            }); 
          },
        ),
        SizedBox(width : 6.0), //Dibuja un espacio entre los widgets.
        FloatingActionButton(//Botón flotante.
          child: Icon(Icons.add), //Se dibuja un icono en el hijo del botón flotante.
          onPressed: () { //Función obligatoria para un botón flotante que se ejecuta cuando es presionado.
            setState(() {//Redibuja el widget.
              increaseCounter(); //Se incrementa el contador al dar click en el botón.
            }); 
          },
        ),
      ],
    );   
  }

  //Función que incrementa el contador.
  void increaseCounter(){
    _count++;
  }

  //Función que decrementa el contador.
  //El valor mínimo que se le permite tener al contador es 0.
  void decreaseCounter(){
    if(_count -1 >= 0){
      _count--;
    } 
  }

  //Funcion que reinicia el contador.
  void resetCounter(){
    _count = 0;
  }
 
 }
