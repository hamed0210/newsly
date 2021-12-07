import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionesPage extends StatefulWidget {
  const UbicacionesPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<UbicacionesPage> createState() => _UbicacionesPageState();
}

class _UbicacionesPageState extends State<UbicacionesPage> {
  // Listado de cadenas
  var listado = [
    Ubicacion("Luffy0219", "hace 2 minutos"),
    Ubicacion("Zoro__", "hace 4 minutos"),
    Ubicacion("Zoro__", "hace 15 minutos"),
    Ubicacion("Luffy0219", "hace 2 minutos"),
  ];

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
        appBar: AppBar(
            // leading: Container(),
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
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 20.0, bottom: 5.0),
                    child: BackButton(color: HexColor('#1E2A78'))),
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                      const EdgeInsets.only(left: 10.0, top: 20.0, bottom: 5.0),
                  child: Text(
                    'Ubicaciones',
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
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                itemBuilder: (context, i) {
                  return Card(
                      elevation: 5.0,
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0),
                      child: Container(
                          // padding: const EdgeInsets.all(20.0),
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                          child: Column(children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: Text(listado[i].username,
                                      style: const TextStyle(
                                          fontFamily: 'Antonio',
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text(listado[i].time,
                                    style: TextStyle(
                                        fontFamily: 'Antonio',
                                        fontSize: 14,
                                        color: HexColor('#C4C4C4'))),
                              ],
                            ),
                          ])));
                },
              ),
            )
          ],
        ));
  }
}

class Ubicacion {
  late String username;
  late String time;

  Ubicacion(
    this.username,
    this.time,
  );
}
