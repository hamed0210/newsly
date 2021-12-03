import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void _signin() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
              child: Container(
            margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
            child: const Text(
              'Registro',
              style: TextStyle(fontFamily: 'Antonio', fontSize: 18, fontWeight: FontWeight.w600),
            ),
          )),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Usuario',
                style: TextStyle(
                   fontFamily: 'Antonio',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                   )),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Escriba su usuario',
                    // labelText: 'Usuario',
                    filled: true,
                    fillColor: HexColor('#f4f4f4')),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Nombre',
                style: TextStyle(
                   fontFamily: 'Antonio',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                   )),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Escriba su nombre',
                    // labelText: 'Usuario',
                    filled: true,
                    fillColor: HexColor('#f4f4f4')),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Apellido',
                style: TextStyle(
                   fontFamily: 'Antonio',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                   )),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Escriba su apellido',
                    // labelText: 'Usuario',
                    filled: true,
                    fillColor: HexColor('#f4f4f4')),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Correo Electronico',
                style: TextStyle(
                   fontFamily: 'Antonio',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                   )),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Escriba su correo electronico',
                    // labelText: 'Usuario',
                    filled: true,
                    fillColor: HexColor('#f4f4f4')),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Contraseña',
                style: TextStyle(
                   fontFamily: 'Antonio',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                   )),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Escriba nueva contraseña',
                    // labelText: 'Usuario',
                    filled: true,
                    fillColor: HexColor('#f4f4f4')),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Confirmar Contraseña',
                style: TextStyle(
                   fontFamily: 'Antonio',
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                   )),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirmar contraseña',
                    // labelText: 'Usuario',
                    filled: true,
                    fillColor: HexColor('#f4f4f4')),
              ),
            ),
          ),
          Center(
              child: Container(
            margin:
                const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
            child: MaterialButton(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              minWidth: 500.0,
              child: const Text(
                'Registrar',
              ),
              textColor: Colors.white,
              color: HexColor('#2EC37C'),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          )),
          Center(
              child: Container(
            margin:
                const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
            child: MaterialButton(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              minWidth: 500.0,
              child: const Text(
                'Cancelar',
              ),
              textColor: Colors.white,
              color: HexColor('#464242'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          )),
        ],
      ),
    );
  }
}
