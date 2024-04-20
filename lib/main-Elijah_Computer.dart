import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            toolbarHeight: 30,
            title: const Text(
              "Profolio",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[800],
          ),
          body: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.black,
                child: const Text(
                  'Welcome Ben!',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ))
            ],
          )),
    );
  }
}
