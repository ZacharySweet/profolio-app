import 'package:flutter/material.dart';
import 'package:profolio/widgets/providers/club_data_and_provider.dart'; // Import ClubListProvider
import 'package:profolio/routes/add_pages/add_club.dart'; // Import AddClub route
import 'package:profolio/widgets/section_divider.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:provider/provider.dart'; // Import Provider

class ClubPage extends StatefulWidget {
  const ClubPage({super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  // No need for a separate clubs list variable

  void addClub(String clubTitle, String clubDescription) async {
    // Access ClubListProvider instance
    final clubListProvider =
        Provider.of<ClubListProvider>(context, listen: false);

    // Navigate to AddClub and potentially receive data
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddClub()),
    );

    // Check if data is returned (optional)
    if (result != null) {
      final clubTitle = result[0];
      final clubDescription = result[1];

      // Use the stored provider instance to add the club
      clubListProvider.addClub(clubTitle, clubDescription);
    }
  }

  @override
  Widget build(BuildContext context) {
    final clubListProvider =
        Provider.of<ClubListProvider>(context); // Access provider

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Clubs'), // Set your desired title
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
                                "Clubs are a crucial part of your high school resume. Being a high ranking member of various clubs can greatly increase your odds of being accepted into your dream college.",
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
                                  onPressed: () =>
                                      addClub('', ''), // Call addClub function
                                  child: const Text("Add Club"),
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
              // List of clubs section
              const SectionDivider(dividerText: "Your Clubs"),
              Expanded(
                child: ListView(
                  children:
                      clubListProvider.clubs // Access clubs list from provider
                          .map((club) => ListWidget(
                                title: club.clubTitle,
                                description: club.clubDescription,
                              ))
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
