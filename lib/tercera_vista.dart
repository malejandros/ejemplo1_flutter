import 'package:ejemplo1/segunda_vista.dart';
import 'package:flutter/material.dart';

class Tercera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tercera Pantalla'),
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Esta es la tercera vista',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          RaisedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Regresar',
              textScaleFactor: 2.0,
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SegundaVista()));
            },
            child: Text(
              'Ir a segunda vista',
              textScaleFactor: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
