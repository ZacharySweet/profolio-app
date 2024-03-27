import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  const SizedBox(
                    height: 160,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/temp.jpg"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      child: GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("assets/temp.jpg"),
                          radius: 50,
                        ),
                      ))
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      'Name')
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('age'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Grade')
                ],
              )
            ],
          )),
    );
  }
}
