import 'package:flutter/material.dart';
import 'package:project_card_pokemon/provider/login_data.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            SizedBox(
              width: 200,
              height: 150,
              child: Image.asset('assets/login.png')
            ),
            Text(Provider.of<LoginData>(context, listen: false).user),
          ],
        ),
      ),
    );
  }
}