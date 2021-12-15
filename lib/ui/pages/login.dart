import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:cupertino_icons/cupertino_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _login() {
    setState(() {
      Navigator.pushNamed(context, '/home');
    });
  }

  final scafoldKey = GlobalKey<ScaffoldState>();
  final formularioKey = GlobalKey<FormState>();
  final formularioKey2 = GlobalKey<FormState>();
  late String email;
  late String contrasena;
  bool ishiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // const Text("newsly"),
          Center(
              child: Container(
            margin: const EdgeInsets.only(top: 100.0, bottom: 60.0),
            child: Text(
              'Newsly',
              style: TextStyle(
                  fontFamily: 'RacingSansOne',
                  fontSize: 36,
                  color: HexColor('#1E2A78')),
            ),
          )),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Correo',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
              child: Form(
                key: formularioKey,
                child: TextFormField(
                  onSaved: (valor) {
                    email = valor!;
                  },
                  validator: (valor) {
                    email = valor!;
                    if (valor.isEmpty) {
                      return "Llene este campo";
                    }
                    if (!valor.contains("@")) {
                      return "Debe ingresar un correo electronico";
                    }
                    if (email != "prueba@gmail.com") {
                      return "Email incorrecto";
                    }
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Escriba su correo electronico',
                      // labelText: 'Usuario',
                      filled: true,
                      fillColor: HexColor('#f4f4f4')),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: const Text('Contraseña',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              margin:
                  const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
              child: Form(
                key: formularioKey2,
                child: TextFormField(
                  onSaved: (valor) {
                    contrasena = valor!;
                  },
                  validator: (valor) {
                    contrasena = valor!;
                    if (valor.isEmpty) {
                      return "Llene este campo.";
                    }
                    if (valor.length < 6) {
                      return "La contraseña debe ser minimo de 6 caracteres.";
                    }
                    if (contrasena != "123456") {
                      return "Contraseña es incorrecta";
                    }
                  },
                  obscureText: ishiddenpassword,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Escriba su contraseña',
                      // labelText: 'Usuario',
                      filled: true,
                      fillColor: HexColor('#f4f4f4')),
                ),
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
                'Iniciar Sesion',
              ),
              textColor: Colors.white,
              color: HexColor('#2EC37C'),
              onPressed: () {
                _mostrarsegundapantalla(context);
                //Navigator.pushNamed(context, '/home');
              },
            ),
          )),
          Center(
              child: Container(
            margin: const EdgeInsets.only(bottom: 30.0),
            child: MaterialButton(
              // minWidth: 500.0,
              child: const Text(
                'Registrate',
              ),
              textColor: HexColor('#1E2A78'),
              hoverColor: Colors.transparent,
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          )),
          Center(
              child: Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: const Text(
              'O inicia sesion con',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )),
          Center(
              child: IconButton(
                  //  color: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    color: HexColor('#1E2A78'),
                  ),
                  // iconSize: 10.0,
                  onPressed: () {}))
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: _login, tooltip: 'LogIn', child: const Icon(Icons.login)),
    );
  }

  void _mostrarsegundapantalla(BuildContext context) {
    if (formularioKey.currentState!.validate()) {
      formularioKey.currentState!.save();
      if (formularioKey2.currentState!.validate()) {
        formularioKey2.currentState!.save();
        Navigator.of(context).pushNamed("/home");
      }
    }
  }
}
