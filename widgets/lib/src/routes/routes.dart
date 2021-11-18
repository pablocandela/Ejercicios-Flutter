import 'package:flutter/material.dart';

import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/pages/avatar_page.dart';
import 'package:widgets/src/pages/card_page.dart';
import 'package:widgets/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  Map<String, WidgetBuilder> routes = {//Diccionario de rutas de la apĺicación.
  "/" : (BuildContext context) => HomePage(),
  "alert" : (BuildContext context) => AlertPage(),
  "avatar" : (BuildContext context) => AvatarPage(),
  "card" : (BuildContext context) => CardPage(),
  };

  return routes;
}