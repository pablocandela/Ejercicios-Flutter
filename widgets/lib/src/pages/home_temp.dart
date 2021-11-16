import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final List<String> list = ["Uno", "Dos", "Tres", "Cuatro"];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuevo"),
      ),
      body: ListView(
        children: _createItems2()
      ),
    );
  }

//Método que regresa una lista de ListTitle separados por un divider..
  List<Widget> _createItems(){
    List<Widget> listItems = [];
    for(var item in list){  
      Widget tempWidget = new ListTile(
         title: Text(item)
      );
      listItems.add(tempWidget);
      Widget divider  = new Divider();
      listItems.add(divider);
    }
    return listItems;
  }

  //Método que regresa una lista de ListTitle separados por un divider. 
  //esta versión usando map.
  List<Widget> _createItems2(){
    return list.map((item) => 
      Column(
        children: <Widget> [
          ListTile(
            title: Text(item),
            subtitle: Text("Cualquier Cosa"),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.arrow_right),
            onTap: () => {},
          ),
          Divider()
        ]
      )
    ).toList(); //Cada elemento de la lista es 
    //evaluada por la funcion anonima. ToList convierte la lista iterable resultante en una lista de los el
    //elementos contenidos.
  }
}