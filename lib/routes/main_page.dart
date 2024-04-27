import 'package:flutter/material.dart';
import 'package:profolio/widgets/home_screen_pages/basic.dart';
import 'package:profolio/widgets/home_screen_pages/clubs.dart';
import 'package:profolio/widgets/home_screen_pages/classes.dart';
import 'package:profolio/widgets/home_screen_pages/sports.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    const BasicPage(),
    const ClassPage(),
    const ClubPage(),
    const SportPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            shadowColor: const Color.fromARGB(92, 95, 95, 95),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            title: const Row(
              children: [
                FlutterLogo(),
                SizedBox(width: 16),
                Text("Your Profolio",
                    style: TextStyle(
                        color: Colors.black, fontSize: 26, fontFamily: 'Fun'))
              ],
            ),
            bottom: const TabBar(
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w300, fontFamily: "WorkSans"),
              unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w300, fontFamily: "WorkSans"),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: <Widget>[
                Tab(text: "Basic"),
                Tab(text: "Classes"),
                Tab(text: "Clubs"),
                Tab(text: "Sports")
              ],
            ),
          ),
          body: Stack(children: [
            TabBarView(
              children: pages,
            ),
          ]),
        ));
  }
}
