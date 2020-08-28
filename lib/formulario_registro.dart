import 'package:ejemplo1/vista_con_argumentos.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class FormularioRegistro extends StatefulWidget {
  @override
  _FormularioRegistroState createState() => _FormularioRegistroState();
}

class _FormularioRegistroState extends State<FormularioRegistro> {
  String nombre;
  String correo;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Formulario de registro',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Nombre',
                    icon: Icon(Icons.person),
                  ),
                  validator: (String value) {
                    if (value.length == 0) {
                      return 'Debes ingresar un valor';
                    } else if (value.length < 4) {
                      return 'El nombre debe contener al menos 4 caracteres';
                    } else
                      return null;
                  },
                  onChanged: (String value) {
                    nombre = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Correo electronico',
                    icon: Icon(Icons.email),
                  ),
                  validator: (String email) {
                    final bool isValid = EmailValidator.validate(email);
                    return isValid ? null : 'Ingresa un correo valido';
                  },
                  onChanged: (String value) {
                    correo = value;
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VistaConArgumentos(
                            nombre: nombre,
                            correo: correo,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Registrarme'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
