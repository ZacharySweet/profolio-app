import 'package:flutter/material.dart';
import 'package:profolio/widgets/dropdown_list.dart'; // Assuming dropdown widget is in a separate file

final List<String> activityNames = [
  'Academics',
  'Clubs',
  'Community Service',
  'Sports'
];

class Activity {
  final String title;
  final String description;

  Activity({required this.title, required this.description});
}

class AddActivity extends StatefulWidget {
  final Function(String title, String description) onAddActivity;

  const AddActivity({super.key, required this.onAddActivity});

  @override
  State<AddActivity> createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  String selectedActivity = activityNames[0];
  bool showHoursField = false;
  String _title = '';
  String _description = '';

  String get title => _title;
  String get description => _description;

  @override
  void initState() {
    super.initState();
    showHoursField = selectedActivity == 'Community Service';
  }

  void onDropdownChange(String newValue) {
    setState(() {
      selectedActivity = newValue;
      showHoursField = newValue == 'Community Service';
    });
  }

  void submitActivity() {
    String title = this.title; // Get title from UI (e.g., from a TextField)
    String description =
        this.description; // Get description from UI (e.g., from a TextField)

    if (title.isEmpty || description.isEmpty) {
      // Handle empty input cases (optional)
      return;
    }

    widget.onAddActivity(
        title, description); // Call addActivity function passed from ClubPage
    Navigator.pop(context); // Close AddActivity page
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Add Activity"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Title',
                  ),
                  onChanged: (value) => setState(() {
                    _title = value; // Update private _title variable
                  }),
                ),
              ),
              Container(
                height: 265,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Expanded(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                      maxLines: null, // Allow unlimited lines
                      onChanged: (value) => setState(() {
                        _description =
                            value; // Update private _description variable
                      }),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReusableDropdown(
                    hint: 'for: ',
                    items: activityNames,
                    initialValue: selectedActivity,
                    onChanged: onDropdownChange,
                  ),
                  const SizedBox(width: 30),
                  Visibility(
                    visible: showHoursField,
                    child: Container(
                      width: 50,
                      child: const TextField(
                        decoration: InputDecoration(hintText: 'Hours:'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: submitActivity,
                child: const Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(100, 40),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
