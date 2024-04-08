import 'package:flutter/material.dart';

class MainFAB extends StatelessWidget {
  const MainFAB({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your action here
      },
      child: const Icon(Icons.add),
    );
  }
}
