import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
            // padding: EdgeInsets.fromLTRB(20, 0, 20, 0)
            // margin: EdgeInsets.only(left:30.0, top:20.0,right:30.0,bottom:20.0),
            child: Container(
              margin: const EdgeInsets.only( top:100.0,bottom:60.0),
             child: Text(
                'Newsly',
                style: TextStyle(fontFamily:  'RacingSansOne', fontSize: 36, color: HexColor('#1E2A78')),
                ), 
            )
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only( left:40.0,right:40.0, bottom: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Escriba su usuario',
                  // labelText: 'Usuario',
                  filled: true,
                  fillColor: HexColor('#f4f4f4')
                ),
                
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only( left:40.0,right:40.0, bottom: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Escriba su contraseña',
                  // labelText: 'Usuario',
                  filled: true,
                  fillColor: HexColor('#f4f4f4')
                ),
                
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only( left:40.0,right:40.0, bottom: 20.0),
            child: MaterialButton(
              padding: const EdgeInsets.only( top:15.0,bottom:15.0),
              minWidth: 500.0,
              child: const Text('Iniciar Sesion', ),
              textColor: Colors.white,
              color: HexColor('#2EC37C'),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),

            )
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only( bottom:30.0),
            child: MaterialButton(
              // minWidth: 500.0,
              child: const Text('Registrate', ),
              textColor: HexColor('#1E2A78'),
              hoverColor: Colors.transparent,
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            ),

            )
          ),
          Center(
            // padding: EdgeInsets.fromLTRB(20, 0, 20, 0)
            // margin: EdgeInsets.only(left:30.0, top:20.0,right:30.0,bottom:20.0),
            child: Container(
              margin: const EdgeInsets.only         (bottom:20.0),
             child: const Text(
                'O inicia sesion con',
                style: TextStyle(fontSize: 14, 
                ),
                ), 
            )
          )
          
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: _login, tooltip: 'LogIn', child: const Icon(Icons.login)),
    );
  }
}