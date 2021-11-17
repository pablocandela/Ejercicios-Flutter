import 'package:flutter/material.dart';

import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/routes/routes.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      initialRoute: "/", //La ruta que va a tomar cuando se inicia la aplicación.
      routes: getAplicationRoutes(),
      //Cuando se llama una ruta no definida se 
      //disparan las intrucciones de la función.
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}