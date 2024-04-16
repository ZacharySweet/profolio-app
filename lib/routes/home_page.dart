import 'package:flutter/material.dart';
import 'package:profolio/routes/test_page.dart';
import 'package:profolio/widgets/circle_tab_indicator.dart';

TextStyle tabTextStyle =
    const TextStyle(fontWeight: FontWeight.w300, fontFamily: "WorkSans");

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Makes the main page
    return MaterialApp(
      home: Scaffold(
        // Creates the appbar
        appBar: AppBar(
            centerTitle: true,
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
            )),
        body: DefaultTabController(
            length: 4,
            child: TabBar(
              labelStyle: tabTextStyle,
              unselectedLabelStyle: tabTextStyle,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicator: CircleTabIndicator(color: Colors.black, radius: 2.5),
              tabs: const <Widget>[
                Tab(text: "Basic"),
                Tab(text: "Grades"),
                Tab(text: "Clubs"),
                Tab(text: "Sports")
              ],
            )),
        // Creates the main action button used for editing actions in the app
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TestPage()));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
