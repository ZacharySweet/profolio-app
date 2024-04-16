import 'package:flutter/material.dart';
import 'package:profolio/routes/test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Makes the main page
    return MaterialApp(
      home: Scaffold(
        // Creates the appbar
        appBar: AppBar(
            centerTitle: true,
            shadowColor: const Color.fromARGB(0, 255, 255, 255),
            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            title: const Row(
              children: [
                FlutterLogo(),
                SizedBox(width: 16),
                Text("Your Profolio",
                    style: TextStyle(
                        color: Colors.black, fontSize: 26, fontFamily: 'Fun'))
              ],
            )),
        body: const Column(
          children: [
            // Making the navigation bar
            DefaultTextStyle(
                style: TextStyle(color: Colors.black, fontFamily: 'WorkSans'),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Basic"),
                        Text("Academics"),
                        Text("Sports"),
                        Text("Clubs")
                      ],
                    )))
          ],
        ),
        // Creates the main action button used for editing actions in the app
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TestPage()));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
