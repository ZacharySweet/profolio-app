import 'package:flutter/material.dart';
import 'package:profolio/widgets/providers/class_data_and_provider.dart'; // Import ClassListProvider
import 'package:profolio/routes/add_pages/add_class.dart'; // Import AddClass route
import 'package:profolio/widgets/section_divider.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:provider/provider.dart'; // Import Provider

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  void addClass(String classTitle, String classDescription) async {
    Provider.of<ClassListProvider>(context, listen: false)
        .addClass(classTitle, classDescription);
  }

  @override
  Widget build(BuildContext context) {
    final classListProvider =
        Provider.of<ClassListProvider>(context); // Access provider

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Academics'),
      ),
      body: Container(
          color: const Color.fromARGB(255, 246, 246, 246),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // Infographic section
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 2, 16),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(12.5)),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(14, 7, 14, 7),
                        child: Row(
                          children: [
                            const FlutterLogo(size: 60),
                            const SizedBox(width: 40),
                            Expanded(
                              child: Column(
                                children: [
                                  const Text(
                                    "Classes are a crucial part of your high school resume. Being a high ranking member of various classes can greatly increase your odds of being accepted into your dream college.",
                                    overflow: TextOverflow.fade,
                                    maxLines: null,
                                    softWrap: true,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "WorkSans",
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        // Access ClassListProvider instance
                                        final classListProvider =
                                            Provider.of<ClassListProvider>(
                                                context,
                                                listen: false);

                                        // Navigate to AddClass and potentially receive data
                                        final result = await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const AddClass()),
                                        );

                                        // Check if data is returned (optional)
                                        if (result != null) {
                                          final classTitle = result[0];
                                          final classDescription = result[1];

                                          // Use the stored provider instance to add the class
                                          classListProvider.addClass(
                                              classTitle, classDescription);
                                        }
                                      },
                                      child: const Text("Add Class"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                // List of classes section
                const SectionDivider(dividerText: "Your Classes"),
                Expanded(
                  child: ListView(
                    children: classListProvider
                        .classes // Access classes list from provider
                        .map((classes) => ListWidget(
                            icon: const Icon(Icons.menu_book),
                            title: classes.classTitle,
                            description: classes.classDescription))
                        .toList(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
