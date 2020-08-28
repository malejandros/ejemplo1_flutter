// import 'package:ejemplo1/segunda_vista.dart';
// import 'package:ejemplo1/tercera_vista.dart';
// import 'package:ejemplo1/argumentos.dart';
import 'package:ejemplo1/vista_con_argumentos.dart';
import 'package:flutter/material.dart';

class PrimeraVista extends StatelessWidget {
  final String puesto = 'Flutter developer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/segunda');
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SegundaVista()));
            },
            child: Text('ir a segunda vista'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tercera');
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Tercera()));
            },
            child: Text('ir a tercera vista'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VistaConArgumentos(
                      nombre: 'Manuel', correo: 'micorreo@gmail.com'),
                ),
              );
              // Navigator.pushNamed(context, '/argumentos',
              //     arguments: Argumentos(
              //         nombre: 'Manuel', correo: 'micorreo@gmail.com'));
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Tercera()));
            },
            child: Text('ir a vista con argumentos'),
          ),
        ],
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
