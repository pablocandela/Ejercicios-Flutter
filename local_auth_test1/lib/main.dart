import 'package:flutter/material.dart';
import 'package:local_auth_test1/pages/finger_print_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba Biometricos',
      home: const FingerPrintTest(),
    );
  }
}

