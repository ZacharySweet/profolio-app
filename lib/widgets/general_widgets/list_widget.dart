import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final String description;

  const ListWidget({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            FlutterLogo(size: 40),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, textAlign: TextAlign.left),
                Text(description, textAlign: TextAlign.left),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
