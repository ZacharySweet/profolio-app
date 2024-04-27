import 'package:flutter/material.dart';

class CommunityListWidget extends StatelessWidget {
  final String title;
  final String description;
  final int hours;

  const CommunityListWidget({Key? key, required this.title, required this.description, required this.hours})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(29, 0, 0, 0),
              spreadRadius: 0.01,
              blurRadius: 2,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const FlutterLogo(size: 40),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, textAlign: TextAlign.left),
                  Text(description, textAlign: TextAlign.left),
                  Row(children: [const Text('For '), Text(hours.toString()), const Text(' hours')],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
