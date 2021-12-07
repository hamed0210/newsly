import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  // Listado de cadenas
  var listado = [
    Chat("Ruthford Jay",
        "Lorem Ipsum is simply dummy text of the printing and typesetti..."),
    Chat("Jim Jay",
        "Lorem Ipsum is simply dummy text of the printing and typesetti..."),
    Chat("Ruthford Jay",
        "Lorem Ipsum is simply dummy text of the printing and typesetti..."),
    Chat("Jim Jay",
        "Lorem Ipsum is simply dummy text of the printing and typesetti..."),
    Chat("Ruthford Jay",
        "Lorem Ipsum is simply dummy text of the printing and typesetti..."),
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
          // Lista de Post
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
                  'Chats',
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
            flex: 5,
            child: ListView.builder(
              itemCount: listado.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/chat');
                    },
                    child: Card(
                        elevation: 0.5,
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: const CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://files.rcnradio.com/public/styles/d_img_850x580/public/2021-12/volcan_semeru_0.jpg?sIXEo7Nt8C6ZaN29D6C6LjbrF88Z5ZDA&itok=zujp-W4w'),
                                    ),
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          listado[i].name,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 10.0),
                                          alignment: Alignment.centerLeft,
                                          child: Expanded(
                                            child: Text(listado[i].desc),
                                          )),
                                    ],
                                  ))
                            ],
                          ),
                        )));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          // tooltip: 'LogIn',
          backgroundColor: Colors.white,
          label: Text(
            'Nuevo Chat',
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

class Chat {
  late String name;
  late String desc;

  Chat(this.name, this.desc);
}
