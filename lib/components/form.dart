// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:project_card_pokemon/provider/login_data.dart';
import 'package:provider/provider.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {

  final _formkey = GlobalKey<FormState>();

  String user = '';
  String password = '';

  void printUser () {
    print('User: $user');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(
            width: 350,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Informe your user',
                labelText: 'User'
              ),
              validator: (value) {
                if(value!.isEmpty) {
                  return 'please inform user';
                }
                return null;
              },
              onSaved: (txt) {
                setState(() {
                  user = txt!;
                });
              },
            ),
          ),
          SizedBox(
            width: 350,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.password),
                hintText: 'Informe your password',
                labelText: 'Password'
              ),
              validator: (value) {
                if(value!.isEmpty) {
                  return 'please inform password';
                }
                return null;
              },
              onSaved: (txt) {
                setState(() {
                  password = txt!;
                });
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            child: ElevatedButton(
              onPressed: () {
                if(_formkey.currentState!.validate()) {
                  _formkey.currentState?.save();
                  (Provider.of<LoginData>(context, listen: false).saveLogin(user, password));
                  Navigator.pushNamed(context, '/profile');
                }
              },
              child: const Text('Go to profile page'),
            ),
          )
        ],
      ),
    );
  }
}