import 'package:flutter/material.dart';

class AddSport extends StatefulWidget {
  const AddSport({super.key});

  @override
  State<AddSport> createState() => _AddSportState();
}

class _AddSportState extends State<AddSport> {
  final _titleController = TextEditingController(); // Controller for Sport Title
  final _descriptionController = TextEditingController(); // Controller for Description

  String? _selectedCategory; // Variable to store selected dropdown value

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitSport() {
  addSport(context); // Access BuildContext from the surrounding scope
}



  void addSport(BuildContext context) {
    final clubTitle = _titleController.text;
    final clubDescription = _descriptionController.text;

    // Validate user input (optional)
    if (clubTitle.isEmpty || clubDescription.isEmpty) {
      // Show error message or prevent submission
      return;
    }

    // Navigate back with user-entered data
    Navigator.pop(context, [clubTitle, clubDescription]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Add Sport"),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(hintText: "Action Title"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(hintText: "Description"),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: _selectedCategory, // Set initial selected value
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
                setState(() {
                  _selectedCategory = value;
                });
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: submitSport,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
