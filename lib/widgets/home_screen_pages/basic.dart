import 'package:flutter/material.dart';

class HomePageData {}

class BasicPage extends StatefulWidget {
  const BasicPage({super.key});

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 246, 246, 246),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [Text("Zachary Sweet"), Text("Junior")],
          ),
        ));
  }
}
