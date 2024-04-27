import 'package:flutter/material.dart';
import 'package:profolio/widgets/providers/sport_data_and_provider.dart'; // Import SportListProvider
import 'package:profolio/routes/add_pages/add_sport.dart'; // Import AddSport route
import 'package:profolio/widgets/divider_and_text.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:provider/provider.dart'; // Import Provider

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  // No need for a separate sports list variable

  void addSport(String sportTitle, String sportDescription) async {
    //  await Navigator.push(
    // context,
    //MaterialPageRoute(builder: (context) => const AddSport()),
    //);

    Provider.of<SportListProvider>(context, listen: false)
        .addSport(sportTitle, sportDescription);
  }

  @override
  Widget build(BuildContext context) {
    final sportListProvider =
        Provider.of<SportListProvider>(context); // Access provider

    return Scaffold(
      appBar: AppBar(title: const Text('My Sports'),),
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
                                  "Sports are a crucial part of your high school resume. Being a high ranking member of various sports can greatly increase your odds of being accepted into your dream college.",
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
                                      // Access SportListProvider instance
                                      final sportListProvider =
                                          Provider.of<SportListProvider>(context,
                                              listen: false);
      
                                      // Navigate to AddSport and potentially receive data
                                      final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AddSport()),
                                      );
      
                                      // Check if data is returned (optional)
                                      if (result != null) {
                                        final sportTitle = result[0];
                                        final sportDescription = result[1];
      
                                        // Use the stored provider instance to add the sport
                                        sportListProvider.addSport(
                                            sportTitle, sportDescription);
                                      }
                                    },
                                    child: const Text("Add Sport"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // List of sports section
                const DividerAndText(dividerText: "Your Sports"),
                Expanded(
                  child: ListView(
                    children: sportListProvider
                        .sports // Access sports list from provider
                        .map((sport) => ListWidget(
                            title: sport.sportTitle,
                            description: sport.sportDescription))
                        .toList(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
