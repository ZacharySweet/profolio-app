import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Wrap the content with Center widget
        child: Column(
          mainAxisSize: MainAxisSize.min, // Center vertically
          children: [
            const FlutterLogo(size: 190),
            const SizedBox(height: 50),
            const Text("Welcome!", style: TextStyle(fontSize: 32)),
            const SizedBox(height: 5),
            const Text("We just have a few questions."),
            const SizedBox(height: 100),
            ElevatedButton(onPressed: () {}, child: const Text("Get Started"))
          ],
        ),
      ),
    );
  }
}
