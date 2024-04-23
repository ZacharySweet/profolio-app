import 'package:flutter/material.dart';
import 'package:profolio/widgets/general_widgets/infographic_widget.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 246, 246, 246),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // Infographic at the top
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                child: InfographicWidget(
                  buttonText: "Add Club",
                  descriptionText:
                      "Clubs are a crucial part of your high school résumé. They display your ability to network with others and your commitment be active within your community.",
                ),
              ),
              // List of all the clubs the user is in
              Row(children: [
                const Expanded(
                  child: Text(
                    "Your Text Here",
                  ),
                ),
                Container(
                  width: 1.0, // Adjust width for line thickness
                  color: Colors.grey, // Set line color
                  height: 3, // Make the line full height
                ),
              ])
            ],
          ),
        ));
  }
}
