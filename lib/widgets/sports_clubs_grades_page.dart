import 'package:flutter/material.dart';
import 'package:profolio/routes/add_activity.dart';

class ClubPage extends StatefulWidget {
  final List<Activity> activities;

  const ClubPage({super.key, required this.activities});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  List<Activity> activities = []; // List to store added activities

  // ... other state variables and methods

  void addActivity(String title, String description) {
    // Handle adding a new activity (similar to submitActivity in AddActivity)
    Activity newActivity = Activity(title: title, description: description);
    setState(() {
      activities.add(newActivity);
    });
  }

  void navigateToAddActivity() async {
    final result = await Navigator.pushNamed(
      context,
      '/add-activity',
      arguments: {'onAddActivity': addActivity}, // Pass addActivity function
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Club information and details here (e.g., club name, description, image)
            // Display the list of activities
            Column(
              children: widget.activities
                  .map((activity) => _buildActivityItem(activity))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(Activity activity) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            activity.title,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          Text(activity.description),
        ],
      ),
    );
  }
}
