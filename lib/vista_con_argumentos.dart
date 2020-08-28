// import 'package:ejemplo1/argumentos.dart';
import 'package:flutter/material.dart';

// class Argumentos {
//   String nombre;
//   String correo;

//   Argumentos({this.nombre, this.correo});
// }

class VistaConArgumentos extends StatelessWidget {
  final String nombre;
  final String correo;

  VistaConArgumentos({this.nombre, this.correo});

  @override
  Widget build(BuildContext context) {
    // final Argumentos argumentos = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              // argumentos.nombre,
              nombre,
              textScaleFactor: 2.0,
            ),
          ),
          Center(
              child: Text(
            correo,
            // argumentos.correo,
            textScaleFactor: 2.0,
          )),
        ],
      ),
    );
  }
}
