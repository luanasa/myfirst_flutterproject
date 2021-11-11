import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'dart:ui';

class AppWidget extends StatelessWidget {
  //Widgets que não serão alterados.

  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              //mudar o tema
              primarySwatch: Colors.pink,
              brightness: AppController.instance.darkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
