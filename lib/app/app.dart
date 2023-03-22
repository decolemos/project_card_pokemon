import 'package:flutter/material.dart';
import 'package:project_card_pokemon/pages/home.dart';
import 'package:project_card_pokemon/pages/login.dart';
import 'package:project_card_pokemon/pages/profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/login':(context) => const LoginPage(),
        '/profile':(context) => const ProfilePage()
      },
    );
  }
}