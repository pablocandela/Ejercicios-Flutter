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
            //Al presionar el botón de iniciar sesión se realiza la autenticación
            //por huella digital.
            onPressed: () async {
              //Future que regresa false si el dispositivo no cuenta con lector de 
              //huella digital o el usuario cancela la autenticación y true cuando
              //el dispositivo cuenta con el lector y el usuario se ha autenticado
              //satisfactoriamente.
              final isAuthenticated = await LocalAuthApi.authenticate();
              //Cuando el usuario se autentica ya se tiene accesos a la pagina home.
              if (isAuthenticated) {
                //Se navega a la pagina home.
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
            },
            //Estilos del botón.
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.purple,
            ),
          ),
        ));
  }
}
