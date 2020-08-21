import 'package:flutter/material.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  final String puesto = 'Flutter developer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/manuel.png'),
              ),
            ),
            Text(
              'Manuel Alejandro',
              textAlign: TextAlign.center,
              textScaleFactor: 2.5,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lobster',
                letterSpacing: 3.0,
              ),
            ),
            Text(
              puesto.toUpperCase(),
              textAlign: TextAlign.center,
              textScaleFactor: 1.7,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
            generadorCard(
              texto: '+52 33 56 68 78 56',
              icono: Icons.phone,
            ),
            SizedBox(
              height: 10.0,
            ),
            generadorCard(
              texto: 'micorreo@gmail.com',
              icono: Icons.mail,
            ),
          ],
        ),
      ),
    );
  }

  Widget generadorCard({String texto, IconData icono}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 50.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Icon(
            icono,
            color: Colors.teal,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            texto,
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),
            textScaleFactor: 1.4,
          ),
        ],
      ),
    );
  }
}
