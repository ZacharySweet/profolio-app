import 'package:flutter/material.dart';
import 'package:profolio/routes/add_club.dart';

class InfographicWidget extends StatelessWidget {
  final String buttonText;
  final String descriptionText;

  const InfographicWidget({
    super.key,
    required this.buttonText,
    required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(12.5))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 7, 14, 7),
        child: Row(
          children: [
            const FlutterLogo(size: 60),
            const SizedBox(width: 40),
            Expanded(
              child: Column(
                children: [
                  Text(
                    descriptionText,
                    overflow: TextOverflow.fade,
                    maxLines: null,
                    softWrap: true,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "WorkSans",
                        fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Align(
                    alignment: Alignment.centerRight, // Align to the right
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddClub()),
                        );
                      },
                      child: Text(buttonText),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
