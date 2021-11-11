import 'package:contador/src/pages/count.dart';
import 'package:contador/src/pages/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Count(),
      )
    );
  }
}