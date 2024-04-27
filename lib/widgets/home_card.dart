import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String cardText;
  final String descriptionText;
  final LinearGradient backgroundGradient;

  const HomeCard(
      {super.key,
      required this.cardText,
      required this.descriptionText,
      required this.backgroundGradient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Container(
        decoration: BoxDecoration(
          gradient: backgroundGradient,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          // Use MainAxisAlignment.spaceBetween for even spacing
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardText,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  Text(descriptionText,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.chevron_right, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
