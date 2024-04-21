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
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Name Here', border: InputBorder.none),
              ),
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Age Here', border: InputBorder.none),
              ),
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(6)),
              child: const Expanded(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Short Description of Yourself Here'),
                    maxLines: null, // Allow unlimited lines
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
