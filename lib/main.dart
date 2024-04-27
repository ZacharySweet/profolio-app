import 'package:flutter/material.dart';
import 'package:profolio/routes/main_page.dart';
import 'package:provider/provider.dart';
import 'package:profolio/widgets/providers/club_data_and_provider.dart';
import 'package:profolio/widgets/providers/sport_data_and_provider.dart';
import 'package:profolio/widgets/providers/class_data_and_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ClubListProvider()),
        ChangeNotifierProvider(create: (context) => SportListProvider()),
        ChangeNotifierProvider(create: (context) => ClassListProvider()),
      ],
      child: const MaterialApp(home: MainPage()), // Your main app widget
    ),
  );
}
