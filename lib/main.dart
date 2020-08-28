import 'package:ejemplo1/primera_vista.dart';
// import 'package:ejemplo1/segunda_vista.dart';
// import 'package:ejemplo1/tercera_vista.dart';
// import 'package:ejemplo1/vista_con_argumentos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeraVista(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => PrimeraVista(),
      //   '/segunda': (context) => SegundaVista(),
      //   '/tercera': (context) => Tercera(),
      //   '/argumentos': (context) => VistaConArgumentos(),
      // },
    );
  }
}
