import 'package:flutter/material.dart';

// Import the reusable dropdown widget (assuming it's in a file named reusable_dropdown.dart)
import 'package:profolio/widgets/dropdown_list.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> colorNames = ['Red', 'Green', 'Blue'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi there'),
      ),
      body: Center(
        child: ReusableDropdown(
          items: colorNames,
          initialValue: colorNames[0], // Set initial selected value to 'Red'
          onChanged: (String newValue) {
            print('Selected color: $newValue');
          },
        ),
      ),
    );
  }
}
