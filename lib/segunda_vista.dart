import 'package:flutter/material.dart';

class SegundaVista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Esta es la segunda vista',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false);
            },
            child: Text(
              'Regresar',
              textScaleFactor: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
