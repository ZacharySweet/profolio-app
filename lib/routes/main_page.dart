import 'package:flutter/material.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:profolio/widgets/section_divider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
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
                          style: TextStyle(fontSize: 14)),
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
              const Column(
                children: [
                  ListWidget(
                    title: "Academics",
                    description: "Manage Your Grades And Classes",
                  ),
                  ListWidget(
                    title: "Clubs",
                    description: "Manage Your Clubs And Organizations",
                  ),
                  ListWidget(
                    title: "Sports",
                    description: "Manage Your Athletic Participation",
                  ),
                  ListWidget(
                    title: "Community Service",
                    description: "Manage Your Community Service Hours",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
