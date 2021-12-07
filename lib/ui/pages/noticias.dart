import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  // Listado de cadenas
  var listado = [
    Persona(
      "Titulo",
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Luffy0219",
      "hace 2 minutos",
    ),
    Persona(
      "Titulo Titulo Titulo",
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Luffy0219",
      "hace 2 minutos",
    ),
    Persona(
      "Titulo",
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Luffy0219546546546546",
      "hace 2 minutos",
    ),
    Persona(
      "Titulo",
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "Luffy0219",
      "hace 2 minutos",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: HexColor('#1E2A78')),
          // leading: ,
          automaticallyImplyLeading: false,
          title: Text(
            'Newsly',
            style: TextStyle(
                fontFamily: 'RacingSansOne', color: HexColor('#1E2A78')),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: FaIcon(FontAwesomeIcons.mapMarked,
                  color: HexColor('#46424230')),
              iconSize: 16,
              onPressed: () {
                Navigator.pushNamed(context, '/ubicaciones');
              },
            ),
            TextButton(
              child: Text(
                'Chats',
                style: TextStyle(
                    color: HexColor('#46424230'),
                    fontFamily: 'Antonio',
                    fontWeight: FontWeight.bold),
              ),
              // color: HexColor('#2EC37C'),
              onPressed: () {
                Navigator.pushNamed(context, '/chats');
              },
            ),
            TextButton(
              child: Text(
                'Noticias',
                style: TextStyle(
                    color: HexColor('#46424230'),
                    fontFamily: 'Antonio',
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text('Luffy0219',
                    style: TextStyle(
                        color: HexColor('#1E2A78'),
                        fontFamily: 'Antonio',
                        fontWeight: FontWeight.bold)),
              ),
            ),
            PopupMenuButton(
                offset: const Offset(0, 70),
                icon: FaIcon(FontAwesomeIcons.caretDown,
                    color: HexColor('#1E2A78')),
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Switch(value: isSwitched, onChanged: (value) {}),
                          const Spacer(),
                          const Expanded(
                              child: Text('Dark Mode',
                                  style: TextStyle(
                                      fontFamily: 'Antonio',
                                      fontWeight: FontWeight.bold)))
                        ],
                      )),
                      const PopupMenuDivider(
                        height: 10,
                      ),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.solidUser,
                              color: HexColor('#1E2A78')),
                          const Spacer(),
                          const Expanded(
                              child: Text(
                            'Perfil',
                            style: TextStyle(
                                fontFamily: 'Antonio',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ))
                        ],
                      )),
                      const PopupMenuDivider(
                        height: 10,
                      ),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.signOutAlt,
                              color: HexColor('#1E2A78')),
                          const Spacer(),
                          const Expanded(
                              child: Text('Cerrar Sesion',
                                  style: TextStyle(
                                      fontFamily: 'Antonio',
                                      fontWeight: FontWeight.bold)))
                        ],
                      ))
                      // child: Text('Dark Mode', style: TextStyle(fontFamily: 'Antonio', fontWeight: FontWeight.bold)))
                    ])
          ]),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 5.0),
                  child: BackButton(color: HexColor('#1E2A78'))),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.only(left: 10.0, top: 20.0, bottom: 5.0),
                child: Text(
                  'Noticias',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Antonio',
                      fontSize: 17,
                      color: HexColor('#46424230')),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listado.length,
              padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
              itemBuilder: (context, i) {
                return Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: Container(
                        // padding: const EdgeInsets.all(20.0),
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(children: [
                          Expanded(
                            flex: 3,

                            // child: FittedBox(
                            //   child: Image.network(
                            //     'https://files.rcnradio.com/public/styles/d_img_850x580/public/2021-12/volcan_semeru_0.jpg?sIXEo7Nt8C6ZaN29D6C6LjbrF88Z5ZDA&itok=zujp-W4w',
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),

                            child: Image.network(
                              'https://files.rcnradio.com/public/styles/d_img_850x580/public/2021-12/volcan_semeru_0.jpg?sIXEo7Nt8C6ZaN29D6C6LjbrF88Z5ZDA&itok=zujp-W4w',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 15.0, bottom: 15.0, left: 15.0),
                                    alignment: Alignment.centerLeft,
                                    child: Expanded(
                                      flex: 5,
                                      child: Text(listado[i].title,
                                          style: TextStyle(
                                              color: HexColor('#464242'),
                                              fontSize: 19,
                                              fontFamily: 'Antonio',
                                              fontWeight: FontWeight.bold)),
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 15.0, left: 15.0),
                                    alignment: Alignment.centerLeft,
                                    child: Expanded(
                                      flex: 7,
                                      child: Text(
                                        listado[i].desc,
                                        style: TextStyle(
                                          color: HexColor('#464242'),
                                        ),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              right: 20.0,
                                              left: 15.0,
                                              bottom: 15.0),
                                          child: Text(
                                              'By: ' + listado[i].username,
                                              style: const TextStyle(
                                                  fontFamily: 'Antonio',
                                                  fontWeight: FontWeight.bold)),
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 15.0),
                                            child: Text(listado[i].time,
                                                style: TextStyle(
                                                    fontFamily: 'Antonio',
                                                    fontSize: 14,
                                                    color:
                                                        HexColor('#C4C4C4')))))
                                  ],
                                )
                              ],
                            ),
                          )
                        ])));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          // tooltip: 'LogIn',
          backgroundColor: Colors.white,
          label: Text(
            'Nueva Noticia',
            style: TextStyle(
                fontFamily: 'Antonio',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: HexColor('#1E2A78')),
          ),
          icon: FaIcon(
            FontAwesomeIcons.plus,
            size: 18,
            color: HexColor('#1E2A78'),
          )),
    );
  }
}

class Persona {
  late String title;
  late String desc;
  late String username;
  late String time;

  Persona(
    this.title,
    this.desc,
    this.username,
    this.time,
  );
}
