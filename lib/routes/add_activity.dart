import 'package:flutter/material.dart';

class AddActivity extends StatelessWidget {
  const AddActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Activity")),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(hintText: "Action Title"),
            ),
            const TextField(
              decoration: InputDecoration(hintText: "Description"),
            ),
            DropdownButton<String>(
              // Define String type for value
              value: null, // Initially selected value is null
              // List of DropdownMenuItems
              items: const [
                DropdownMenuItem(
                  value: 'Business',
                  child: Text('Business'),
                ),
                DropdownMenuItem(
                  value: 'Academic',
                  child: Text('Academic'),
                ),
                DropdownMenuItem(
                  value: 'Tech',
                  child: Text('Tech'),
                ),
                DropdownMenuItem(
                  value: 'Other',
                  child: Text('Other'),
                ),
              ],
              onChanged: (String? value) {
                value;
              },
              // Function to update selected value
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
