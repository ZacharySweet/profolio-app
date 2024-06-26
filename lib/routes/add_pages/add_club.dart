import 'package:flutter/material.dart';

class AddClub extends StatefulWidget {
  const AddClub({super.key});

  @override
  State<AddClub> createState() => _AddClubState();
}

class _AddClubState extends State<AddClub> {
  final _titleController = TextEditingController(); // Controller for Club Title
  final _descriptionController = TextEditingController(); // Controller for Description


  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitClub() {
  addClub(context); // Access BuildContext from the surrounding scope
}



  void addClub(BuildContext context) {
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
        title: const Text("Add Club"),
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
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: submitClub,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
