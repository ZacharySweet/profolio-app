import 'package:flutter/material.dart';
import 'package:profolio/routes/add_activity.dart';
import 'package:profolio/routes/test_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // Makes the main page
    return MaterialApp(
        home: Scaffold(
      // Creates the appbar
      appBar: AppBar(
        centerTitle: true,
        shadowColor: const Color.fromARGB(0, 255, 255, 255),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        leading: const CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/van-orang.jpg')),
        title: const Text(
          "HOME",
          style: TextStyle(color: Colors.black),
        ),
      ),
      // Creates the main action button used for editing actions in the app
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyWidget()));
        },
        child: const Icon(Icons.add),
      ),
    ));
  }
}
