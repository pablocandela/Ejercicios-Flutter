import 'package:hola_mundo/src/pages/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Home(),
      )
    );
  }
}