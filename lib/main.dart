import 'package:flutter/material.dart';
import 'package:profolio/routes/main_page.dart';
import 'package:provider/provider.dart';
import 'package:profolio/widgets/home_screen_pages/club_data_and_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ClubListProvider()),
      ],
      child: const MaterialApp(home: MainPage()), // Your main app widget
    ),
  );
}
