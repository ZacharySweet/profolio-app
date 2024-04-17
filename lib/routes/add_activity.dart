import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profolio/widgets/dropdown_list.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> activityNames = ['Academics', 'Clubs', 'Community Service'];
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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: const TextField(
              decoration: InputDecoration(
                border: 
                  OutlineInputBorder(),
                  hintText: 'Title'
                  ),
              ),
            ),
            Container(
              height: 265,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(6)
                ),
              child: const Expanded(
               child: SizedBox(
                width: 300,
                 child: TextField(
                   decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Description'
                    ),
                    maxLines: null, // Allow unlimited lines
                 ),
               ),
               ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableDropdown(
                hint: 'for:  ',
                items: activityNames,
                initialValue: activityNames[0], // Set initial selected value to ''
                onChanged: (String newValue) {
                print('Selected color: $newValue');
                 },
              ),
                const SizedBox(width: 30),
                Container(
                  width: 50,
                  child: const TextField(
                    decoration: InputDecoration(hintText: 'Hours:'),
                  ),
                )
              ]
            ),
        
          ],
        ),
      ),
      ),
    );
  }
}
