import 'package:flutter/material.dart';
import 'package:profolio/widgets/general_widgets/divider_and_text.dart';
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
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // Infographic at the top
              Padding(
                padding: EdgeInsets.fromLTRB(2, 4, 2, 16),
                child: InfographicWidget(
                  buttonText: "Add Club",
                  descriptionText:
                      "Clubs are a crucial part of your high school resume. They display your ability to network with others and your commitment be active within your community.",
                ),
              ),
              // List of all the clubs the user is in
              DividerAndText(dividerText: "Your Clubs")
            ],
          ),
        ));
  }
}
