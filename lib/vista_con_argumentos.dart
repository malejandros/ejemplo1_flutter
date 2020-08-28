import 'package:ejemplo1/argumentos.dart';
import 'package:flutter/material.dart';

class VistaConArgumentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Argumentos argumentos = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              argumentos.nombre,
              textScaleFactor: 2.0,
            ),
          ),
          Center(
              child: Text(
            argumentos.correo,
            textScaleFactor: 2.0,
          )),
        ],
      ),
    );
  }
}
