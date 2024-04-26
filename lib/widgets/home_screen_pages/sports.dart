import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 246, 246, 246),
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(),
      ),
    );
  }
}
