

import 'package:flutter/material.dart';


class CardPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),//Se agrega un padding en todos los widgets de la lista.
        children: <Widget> [
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2()
        ],
      ),
    );
  }

  Widget _cardType1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Titulo de la tarjeta"),
            subtitle: Text("Subtitulo de la tarjeta"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text("Cancelar")
              ),
              TextButton(
                onPressed: () {},
                child: Text("Aceptar")
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(placeholder: AssetImage("assets/jar-loading.gif"), fadeInDuration: Duration(milliseconds: 200 ), image: NetworkImage("https://capturelandscapes.com/wp-content/uploads/2017/03/DSC2441-Panorama.jpeg")),
          /*Image(
            image: NetworkImage(//Widget que sirve para cargar imagenes de internet.
              "https://capturelandscapes.com/wp-content/uploads/2017/03/DSC2441-Panorama.jpeg",
            ),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Hola Mundo"),
          ),
        ],
      ),
    );

  }
 
}