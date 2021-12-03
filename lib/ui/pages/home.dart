import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Listado de cadenas
  var listado = [
    Persona("10001", "Ruthford Jay", "Soy de San Andres y me gusta pescar!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/sloth_lazybones_sluggard_avatar-128.png"),
    Persona(
        "10002",
        "Willy Corzo",
        "Soy de Barranquilla y me gusta el arroz de liza!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/builder_worker_helmet-128.png"),
    Persona("10003", "Nataly Imitola", "Soy de Cartagena y me gusta programar!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_person_kid_child-128.png"),
    Persona("10004", "Andres Tunubala", "Soy de Cauca y me gusta programar!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/indian_man_male_person-128.png"),
    Persona("10005", "Maria Prieto", "Soy de Bogota y me gusta ajiaco!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/female_woman_avatar_portrait_1-128.png"),
  ];

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        // leading: Container(),
        automaticallyImplyLeading: false,
        title: Text('Newsly', style: TextStyle(fontFamily: 'RacingSansOne', color: HexColor('#1E2A78')),),
        backgroundColor: Colors.white,
         actions: <Widget>[
           IconButton(
             icon: FaIcon(FontAwesomeIcons.mapMarked, color: HexColor('#46424230')),
             iconSize: 16,
             onPressed: () {},),
            TextButton(
              child: Text(
                'Chats',
                style: TextStyle(color: HexColor('#46424230'), fontFamily: 'Antonio', fontWeight: FontWeight.bold),
              ),
              // color: HexColor('#2EC37C'),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          TextButton(
              child: Text(
                'Noticias',
                style: TextStyle(color: HexColor('#46424230'), fontFamily: 'Antonio', fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            Center(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0),
              child: Text('Luffy0219', style: TextStyle(color: HexColor('#1E2A78'), fontFamily: 'Antonio', fontWeight: FontWeight.bold)),
            ),
            ),
            PopupMenuButton(
              offset: const Offset(0, 70),
              icon: FaIcon(FontAwesomeIcons.caretDown, color: HexColor('#1E2A78')),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: Row(
                    children: [
                      Switch(value: isSwitched, onChanged: (value) {}),
                      const Spacer(),
                      const Expanded(
                      child:  Text('Dark Mode', style: TextStyle(fontFamily: 'Antonio', fontWeight: FontWeight.bold))
                      
                      )
                    ],
                  )
                ),
                const PopupMenuDivider(
                height: 10,
              ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.solidUser, color: HexColor('#1E2A78')),
                      const Spacer(),
                      const Expanded(
                      child:  Text('Perfil', style: TextStyle(fontFamily: 'Antonio', fontWeight: FontWeight.bold), textAlign: TextAlign.right,)
                      
                      )
                    ],
                  )
                ),
                const PopupMenuDivider(
                height: 10,
              ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.signOutAlt, color: HexColor('#1E2A78')),
                      const Spacer(),
                      const Expanded(
                      child:  Text('Cerrar Sesion', style: TextStyle(fontFamily: 'Antonio', fontWeight: FontWeight.bold))
                      
                      )
                    ],
                  )
                )
                  // child: Text('Dark Mode', style: TextStyle(fontFamily: 'Antonio', fontWeight: FontWeight.bold)))
              ])
         ]
      ),
      body: ListView.builder(
        itemCount: listado.length,
        itemBuilder: (context, i) {
          return Card(
            child: Row(
              children: [
                Image.network(listado[i].img),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Nombre: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(listado[i].name),
                            const Spacer(),
                            const Text(
                              "Codigo: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(listado[i].id),
                          ],
                        ),
                        const Text(
                          "Descripción:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(listado[i].desc),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Persona {
  late String id;
  late String name;
  late String desc;
  late String img;

  Persona(this.id, this.name, this.desc, this.img);
}