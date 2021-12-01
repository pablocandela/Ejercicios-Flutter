import 'package:flutter/material.dart';
import 'package:local_auth_test1/pages/finger_print_test.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        //Botón que sirve para cerrar la sesión. En este caso regresar a la pantalla 
        //de inicio en donde se requiere autenticarse para volver a tener accesos a
        //esta página.
        child: TextButton(
          child: Text("Cerrar Sesión"),
          //Al presionar el botón se navega a la pantalla de inicio.
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => FingerPrintTest()),
          ),
          //Estilos del botón.
          style: TextButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.purple,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text("Buscar"),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text("Perfil"),
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),
    );
  }
}
