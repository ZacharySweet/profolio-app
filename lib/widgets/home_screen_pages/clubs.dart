import 'package:flutter/material.dart';
import 'package:profolio/widgets/general_widgets/divider_and_text.dart';
import 'package:profolio/widgets/general_widgets/infographic_widget.dart';
import 'package:profolio/widgets/general_widgets/list_widget.dart';
import 'package:profolio/routes/add_activity.dart'; // Assuming AddActivity widget is in a separate file

class ClubPage extends StatefulWidget {
  const ClubPage({super.key}); // Removed onAddActivity parameter

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class Activity {
  final String title;
  final String description;

  const Activity({required this.title, required this.description});
}

class _ClubPageState extends State<ClubPage> {
  List<Activity> activities = []; // List to store added activities

  void navigateToAddActivity() async {
    final newActivity = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddActivity()),
    );
    if (newActivity != null) {
      setState(() {
        activities.add(
            newActivity); // Add new activity to the list on receiving from AddActivity
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Club information and details here (e.g., club name, description, image)

            // Display the list of activities
            Column(
              children: activities
                  .map((activity) => _buildActivityItem(activity))
                  .toList(),
            ),

            const SizedBox(height: 30),

            // Button to navigate to AddActivity screen
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem(Activity activity) {
    return ListWidget(title: activity.title, description: activity.description);

  }
}



//class _ClubPageState extends State<ClubPage> {
// @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: const Color.fromARGB(255, 246, 246, 246),
//       child: const Padding(
//      padding: EdgeInsets.all(10),
//        child: Column(
//            children: [
// Infographic at the top
//          Padding(
//              padding: EdgeInsets.fromLTRB(2, 4, 2, 16),
//                child: InfographicWidget(
//        buttonText: "Add Club",
//          descriptionText:
//                "Clubs are a crucial part of your high school resume. They display your ability to network with others and your commitment be active within your community.",
//         ),
//         ),
// List of all the clubs the user is in
//           DividerAndText(dividerText: "Your Clubs"),
//    ListWidget()
//    ],
//    ),
//    ));
//}
//}
