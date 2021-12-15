import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newsly/ui/pages/home.dart';
import 'package:newsly/ui/pages/login.dart';
import 'package:newsly/ui/pages/register.dart';
import 'package:newsly/ui/pages/noticias.dart';
import 'package:newsly/ui/pages/chats.dart';
import 'package:newsly/ui/pages/chat.dart';
import 'package:newsly/ui/pages/ubicaciones.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const LoginPage(
        title: 'LogIn',
      ),
      routes: {
        // '/': (context) => const LoginPage(
        //       title: 'LogIn',
        //     ),
        '/register': (context) => const RegisterPage(
              title: 'Registro',
            ),
        '/home': (context) => const HomePage(
              title: 'Home',
            ),
        '/noticias': (context) => const NoticiasPage(
              title: 'Noticias',
            ),
        '/chats': (context) => const ChatsPage(
              title: 'Chats',
            ),
        '/chat': (context) => const ChatPage(
              title: 'Chat',
            ),
        '/ubicaciones': (context) => const UbicacionesPage(
              title: 'Ubicaciones',
            ),
      },
    );
  }
}

// class Wrong extends StatelessWidget {
//   const Wrong({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text("Ocurrio un error!"));
//   }
// }

// class Loading extends StatelessWidget {
//   const Loading({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const CircularProgressIndicator();
//   }
// }
