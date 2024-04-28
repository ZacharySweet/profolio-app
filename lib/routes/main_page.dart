import 'package:flutter/material.dart';
import 'package:profolio/routes/export_page.dart';
import 'package:profolio/routes/info_pages/classes.dart';
import 'package:profolio/routes/info_pages/clubs.dart';
import 'package:profolio/routes/info_pages/services.dart';
import 'package:profolio/routes/info_pages/sports.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:profolio/widgets/section_divider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final screenshotKey = GlobalKey<State>(); // Using GlobalKey<State>

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
          child: Column(
            children: [
              // User's basic information and stuff
              const Column(
                children: [
                  SizedBox(height: 32),
                  Text("Zachary Sweet", style: TextStyle(fontSize: 34)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Junior at Mena High School",
                          style: TextStyle(fontSize: 14))
                    ],
                  ),
                ],
              ),

              // The user's about me section
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 12, 30, 0),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(62, 56, 56, 56),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "This is an example about me that i think is really cool and its gonna be wrapped with a box and the text is really awesome and then",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // The card information section
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SectionDivider(dividerText: "Your Information"),
              ),
              Column(
                children: [
                  GestureDetector(
                    child: const ListWidget(
                      title: "Academics",
                      description: "Manage Your Grades And Classes",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClassPage()));
                    },
                  ),
                  GestureDetector(
                    child: const ListWidget(
                      title: "Clubs",
                      description: "Manage Your Clubs And Organizations",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ClubPage()));
                    },
                  ),
                  GestureDetector(
                    child: const ListWidget(
                      title: "Sports",
                      description: "Manage Your Athletic Participation",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SportPage()));
                    },
                  ),
                  GestureDetector(
                    child: const ListWidget(
                      title: "Community Service",
                      description: "Manage Your Community Service Hours",
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ServicePage()));
                    },
                  )
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    child: const Text('Export'),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExportPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
