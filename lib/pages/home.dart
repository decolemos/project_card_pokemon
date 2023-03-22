import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 250,
                child: Image.asset('assets/logo.png')
              ),
              const Text('Project Card Pokemon'),
              const Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Go to login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}