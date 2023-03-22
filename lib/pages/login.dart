import 'package:flutter/material.dart';
import 'package:project_card_pokemon/components/form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.asset('assets/pokedex.png')
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: const FormLogin()
            )
          ],
        ),
      ),
    );
  }
}


                // width: 300,
                // height: 250,
                // child: Image.network('https://static.wikia.nocookie.net/pokepediabr/images/3/38/Pok%C3%A9dex_Kanto.png/revision/latest?cb=20131224014121&path-prefix=pt-br')