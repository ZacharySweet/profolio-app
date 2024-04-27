import 'package:flutter/material.dart';
import 'package:profolio/widgets/general_widgets/divider_and_text.dart';
import 'package:profolio/widgets/general_widgets/home_card.dart';

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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: Row(
                children: [
                  Column(children: [
                    const Text(
                      "Zachary Sweet",
                      style: TextStyle(fontSize: 24),
                    ),
                    Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: const Text("Junior"))
                  ])
                ],
              ),
            ),
            const DividerAndText(dividerText: "Your Information"),
            // Scrollable sectio n with HomeCard widgets
            Expanded(
              // Use Expanded to fill remaining space
              child: ListView(
                children: const [
                  HomeCard(
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
                  HomeCard(
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
                  HomeCard(
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
                  HomeCard(
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
                  // Add any additional HomeCard widgets here
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
