import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  final String title; // Title for the page

  const BasicPage({super.key, required this.title});

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  int volunteerHours = 0; // Changing value

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Name Here', border: InputBorder.none),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Age Here', border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
