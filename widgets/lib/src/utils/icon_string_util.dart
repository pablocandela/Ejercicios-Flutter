import 'package:flutter/material.dart';

  //Dicionario que mapea cadenas a iconos.
  final _icons = <String,IconData> {
    "add_alert" : Icons.add_alert,
    "accessibility" : Icons.accessibility,
    "folder_open" : Icons.folder_open,
  };

  //Metodo que obtiene un Icon a partir del nombre del icono que recibe.
  Icon getIcon(String iconName){
    return Icon(_icons[iconName], color: Colors.blue,); 
  }
