import 'package:flutter/material.dart';
import 'package:profolio/routes/info_pages/classes.dart';
import 'package:profolio/routes/info_pages/clubs.dart';
import 'package:profolio/widgets/divider_and_text.dart';
import 'package:profolio/widgets/home_card.dart';
import 'package:profolio/routes/info_pages/services.dart';
import 'package:profolio/routes/info_pages/sports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading:
            const Image(image: AssetImage("lib/assets/images/App_Icon.png")),
        title: const Text(
          "PROFOLIO",
          style: TextStyle(color: Colors.black, fontFamily: "NotoBasic"),
        ),
        actions: [
          GestureDetector(
            child: const Icon(Icons.download, color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Static information section
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Zachary Sweet",
                          style: TextStyle(fontSize: 24),
                        ),
                        Text("Junior")
                      ])
                ],
              ),
            ),
            const DividerAndText(dividerText: "Your Information"),
            // Scrollable sectio n with HomeCard widgets
            Expanded(
              // Use Expanded to fill remaining space
              child: ListView(
                children: [
                  GestureDetector(
                    child: const HomeCard(
                      cardText: "Clubs",
                      descriptionText: "Manage Your Clubs",
                      backgroundGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 52, 116, 255),
                          Color.fromARGB(255, 118, 173, 255),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClubPage()));
                    },
                  ),
                  GestureDetector(
                    child: const HomeCard(
                      cardText: "Sports",
                      descriptionText: "Manage Your Sports",
                      backgroundGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 52, 116, 255),
                          Color.fromARGB(255, 118, 173, 255),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SportPage()));
                    },
                  ),
                  GestureDetector(
                    child: const HomeCard(
                      cardText: "Academics",
                      descriptionText: "Manage Your Academics",
                      backgroundGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 52, 116, 255),
                          Color.fromARGB(255, 118, 173, 255),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClassPage()));
                    },
                  ),
                  GestureDetector(
                    child: const HomeCard(
                      cardText: "Community Service",
                      descriptionText: "Manage Community Service",
                      backgroundGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 52, 116, 255),
                          Color.fromARGB(255, 118, 173, 255),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ServicePage()));
                    },
                  ),
                  // Add any additional HomeCard widgets here
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ClubPage()),
          );
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
