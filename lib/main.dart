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
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  const Expanded(
                    child: SizedBox(height: 180,)),
                  Expanded(
                    child: Container(
                      height: 120,
                      color: Colors.black,
                    )
                  ),

                  const Positioned(
                    top: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 50,
                      )
                    )
                ],
                
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name')
                ],
              )
            ],
          )),
    );
  }
}
