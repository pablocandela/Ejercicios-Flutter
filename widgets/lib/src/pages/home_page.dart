import 'package:flutter/material.dart';
import 'package:widgets/src/providers/menu_provider.dart';
import 'package:widgets/src/utils/icon_string_util.dart';

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
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>>  snapshot) {
       return ListView(
         children: _listItems(snapshot.data, context),
       );
      },
    );
  }

  //Metodo que regresa una lista con los hijos de un textView.
  List<Widget> _listItems(dynamic listData, BuildContext context) {
    List<Widget> items = [];
    for(var item in listData){
      items.add(ListTile(
        title: Text(item["texto"]),
        leading: getIcon(item["icon"]),
        trailing: Icon(Icons.arrow_right),
        onTap: (){
          //Se crea una ruta que apunta a la pagina AlertPage;
          /*final route = MaterialPageRoute(
            builder: (context){
              return AlertPage(); 
            }  
          );
          Navigator.push(context, route);*/

          Navigator.pushNamed(context, item["ruta"]);
        },
      ));
      items.add(Divider());
    }
    return items;
  }
}