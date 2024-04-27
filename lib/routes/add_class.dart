import 'package:flutter/material.dart';

class AddClass extends StatefulWidget {
  const AddClass({super.key});

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {
  final _titleController = TextEditingController(); // Controller for Class Title
  final _descriptionController = TextEditingController(); // Controller for Description

  String? _selectedCategory; // Variable to store selected dropdown value

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitClass() {
  addClass(context); // Access BuildContext from the surrounding scope
}



  void addClass(BuildContext context) {
    final classTitle = _titleController.text;
    final classDescription = _descriptionController.text;

    // Validate user input (optional)
    if (classTitle.isEmpty || classDescription.isEmpty) {
      // Show error message or prevent submission
      return;
    }

    // Navigate back with user-entered data
    Navigator.pop(context, [classTitle, classDescription]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Add Class"),
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
              onPressed: submitClass,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
