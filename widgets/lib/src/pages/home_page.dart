import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _createListView(),
      );
  }

  //Metodo que regresa un ListView con los elementos de la lista.
  Widget _createListView() {
    return ListView(
      children: _createListTitle(),
    );
  }

  //Metodo que regresa una lista con los hijos de un textView.
  List<Widget> _createListTitle() {
    return [];
  }
}