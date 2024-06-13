import 'package:flutter/material.dart';
import 'package:profolio/routes/export_page.dart';
import 'package:profolio/routes/info_pages/classes.dart';
import 'package:profolio/routes/info_pages/clubs.dart';
import 'package:profolio/routes/info_pages/services.dart';
import 'package:profolio/routes/info_pages/sports.dart';
import 'package:profolio/widgets/list_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
        child: Column(
          children: [
            // Mock appbar
            Container(
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 48, 0, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Zach Sweet",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 32)),
                        Text("Junior • Mena High School",
                            style: TextStyle(color: Colors.white, fontSize: 16))
                      ],
                    ),
                  ),
                  Image(
                    height: 55,
                    image: AssetImage("lib/assets/images/App_Icon.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  GestureDetector(
                    child: const ListWidget(
                        title: "Academics",
                        description: "Manage Your Grades And Classes",
                        icon: Icon(Icons.book, color: Colors.white)),
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
                        icon: Icon(Icons.groups, color: Colors.white)),
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
                        icon: Icon(Icons.sports_football, color: Colors.white)),
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
                        icon:
                            Icon(Icons.accessibility_new, color: Colors.white)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ServicePage()));
                    },
                  )
                ],
              ),
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
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Share Your Profolio'),
                        content: const Text(
                            'Would you like to share your Profolio?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              //        Share.shareFiles(['lib/assets/template.pdf']);
                            },
                            child: const Text('Share'),
                          )
                        ],
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
