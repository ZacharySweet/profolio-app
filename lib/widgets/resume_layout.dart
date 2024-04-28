import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profolio/routes/info_pages/classes.dart';
import 'package:profolio/routes/info_pages/clubs.dart';
import 'package:profolio/routes/info_pages/services.dart';
import 'package:profolio/routes/info_pages/sports.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:profolio/widgets/resume_layout.dart';
import 'package:profolio/widgets/section_divider.dart';
import 'package:profolio/widgets/providers/class_data_and_provider.dart'; 
import 'package:provider/provider.dart'; // Import Provider
// Import ClassListProvider


class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {

  @override
  Widget build(BuildContext context) {
    final classListProvider = Provider.of<ClassListProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Zach'),),
      body: Column(children: [
        const SizedBox(height: 80,),
        const Text('Zachary Sweet', style: TextStyle(fontSize: 50,),),
        const Text('Junior at Mena High School'),
        const Text('description'),
        Expanded(
         child: Row(
           children: [
            Expanded(
              flex: 1, // Set flex factor to 1 for equal width
              child: Column(
                children: [
                 const Text('Academics'),
                 Expanded( // Wrap ListView in Expanded for full height
                 child: ListView(
                   children: classListProvider.classes
                    .map((classes) => ListWidget(
                        title: classes.classTitle,
                        description: classes.classDescription))
                     .toList(),
                 ),
                  ),
               ],
               ),
             ),
             const SizedBox(width: 10), // Add spacing between columns
             const Expanded(
             flex: 1, // Set flex factor to 1 for equal width
             child: Column(children: [Text('Clubs')]),
            ),
           ],
         ),
        ),

        ],),
    );
  }
}