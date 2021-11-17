
import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProvider {
    List<dynamic> options = [];

    _MenuProvider() {
    }

    //Método que obtiene el contenido del archivo menu_opts y lo regresa como un String.
    Future<List<dynamic>> loadData() async {
      final resp = await rootBundle.loadString("data/menu_opts.json"); //Se carga la información del .json.
      Map dataMap = json.decode(resp);//Se decodigica la cadena obtenida del .json en una estructura de tipo diccionqrio.
      options = dataMap["rutas"];
      return options;
      
    }
}

final menuProvider = new _MenuProvider();