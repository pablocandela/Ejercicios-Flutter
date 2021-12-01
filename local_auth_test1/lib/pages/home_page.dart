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
        child: TextButton(
          child: Text("Cerrar Sesión"),
          onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => FingerPrintTest()),
          ),
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
              title: Text("Search"),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Text("Profile"),
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),
    );
  }
}
