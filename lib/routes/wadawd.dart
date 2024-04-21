import 'package:flutter/material.dart';
import 'package:profolio/widgets/circle_tab_indicator.dart';
import 'package:profolio/widgets/basic_Page.dart';
import 'package:profolio/widgets/plus_Button.dart';
import 'add_activity.dart';
import 'package:profolio/widgets/sports_clubs_grades_page.dart';

TextStyle tabTextStyle =
    const TextStyle(fontWeight: FontWeight.w300, fontFamily: "WorkSans");

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Activity> activities = [];
  void addActivity(String title, String description) {
    setState(() {
      activities.add(Activity(title: title, description: description));
    });
  }

  @override
  Widget build(BuildContext context) {
    void navigateToAddActivity() {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AddActivity(onAddActivity: addActivity)),
      );
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          title: const Row(
            children: [
              FlutterLogo(),
              SizedBox(width: 16),
              Text("Your Profolio",
                  style: TextStyle(
                      color: Colors.black, fontSize: 26, fontFamily: 'Fun'))
            ],
          ),
          bottom: TabBar(
            labelStyle: tabTextStyle,
            unselectedLabelStyle: tabTextStyle,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicator: CircleTabIndicator(color: Colors.black, radius: 2.5),
            tabs: const <Widget>[
              Tab(
                text: "Basic",
              ),
              Tab(text: "Grades"),
              Tab(text: "Clubs"),
              Tab(text: "Sports")
            ],
          ),
        ),
        body: Stack(children: [
          TabBarView(
            children: [
              const BasicPage(title: 'Basic'), // Basic information placeholder
              const Center(child: Text('Tab 2 Placeholder')), //
              ClubPage(activities: activities),
              const Center(child: Text('Tab 4 Placeholder')),
            ],
          ),
          FloatingPlusButton(
            onPressed: navigateToAddActivity,
          ),
        ]),
      ),
    );
  }
}
