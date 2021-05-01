import 'inicioApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'prueba',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Pruebas de flutter"),
          ),
          body: Stack(
            children: [
              Container(
                child: InicioApp(),
              )
            ],
          ),
        ));
  }
}
