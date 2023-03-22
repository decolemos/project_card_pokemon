import 'package:flutter/material.dart';
import 'package:project_card_pokemon/pages/home.dart';
import 'package:project_card_pokemon/pages/login.dart';
import 'package:project_card_pokemon/pages/profile.dart';
import 'package:project_card_pokemon/provider/login_data.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginData>(create: (context) => LoginData())
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/':(context) => const HomePage(),
          '/login':(context) => const LoginPage(),
          '/profile':(context) => const ProfilePage()
        },
      ),
    );
  }
}