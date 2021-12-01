import 'package:flutter/material.dart';
import 'package:local_auth_test1/api/local_auth_api.dart';

import 'home_page.dart';

class FingerPrintTest extends StatelessWidget {
  const FingerPrintTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inicio de sesión por huella digital"),
        ),
        body: Center(
          child: TextButton(
            child: Text("Iniciar Sesión"),
            onPressed: () async {
              final isAuthenticated = await LocalAuthApi.authenticate();
              if (isAuthenticated) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
            },
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.purple,
            ),
          ),
        ));
  }
}
