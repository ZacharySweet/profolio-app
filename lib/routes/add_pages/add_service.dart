import 'package:flutter/material.dart';

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  final _titleController = TextEditingController(); // Controller for Service Title
  final _descriptionController = TextEditingController();
  final _hoursController = TextEditingController(); // Controller for Description


  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void submitService() {
  addService(context); // Access BuildContext from the surrounding scope
}



  void addService(BuildContext context) {
    final serviceTitle = _titleController.text;
    final serviceDescription = _descriptionController.text;
    final serviceHours = _hoursController.text;

    // Validate user input (optional)
    if (serviceTitle.isEmpty || serviceDescription.isEmpty) {
      // Show error message or prevent submission
      return;
    }

    // Navigate back with user-entered data
    Navigator.pop(context, [serviceTitle, serviceDescription, serviceHours]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Add Service"),
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
              decoration: const InputDecoration(hintText: "Service Title"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(hintText: "Description"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _hoursController,
              decoration: const InputDecoration(hintText: 'Number of Hours (ex. 8)'),),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: submitService,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
