import 'package:flutter/material.dart';

class AddActivity extends StatelessWidget {
  const AddActivity({super.key});

  // Function to handle adding the activity
  void addActivity(BuildContext context) {
    // You can replace this with your logic to retrieve the text field values
    String activityTitle = "FBLA";
    String activityDescription = "president";

    // Here you can perform any further logic, such as validating the input

    // Now, you can navigate back to the previous screen and pass the activity details
    Navigator.pop(context, [activityTitle, activityDescription]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Add Activity"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
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
                // Call the function to add the activity when the button is pressed
                addActivity(context);
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
