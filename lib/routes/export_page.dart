import 'package:flutter/material.dart';
import 'package:profolio/widgets/list_widget.dart';
import 'package:profolio/widgets/providers/class_data_and_provider.dart';
import 'package:provider/provider.dart'; // Import Provider
import 'package:profolio/widgets/providers/sport_data_and_provider.dart';
import 'package:profolio/widgets/providers/club_data_and_provider.dart';
import 'package:profolio/widgets/providers/service_data_and_provider.dart';

class ExportPage extends StatefulWidget {
  const ExportPage({super.key});

  @override
  State<ExportPage> createState() => _ExportPageState();
}

class _ExportPageState extends State<ExportPage> {

  @override
  Widget build(BuildContext context) {
    final classListProvider = Provider.of<ClassListProvider>(context);
    final clubListProvider = Provider.of<ClubListProvider>(context);
    final sportListProvider = Provider.of<SportListProvider>(context);
    final serviceListProvider = Provider.of<ServiceListProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text(''),),
      body: Column(
        children: [
          const Text(
            'Zachary Sweet',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
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
                      Expanded(
                        // Wrap ListView in Expanded for full height
                        child: ListView(
                          children: classListProvider.classes
                              .map((classes) => ListWidget(
                                  icon: const Icon(Icons.menu_book),
                                  title: classes.classTitle,
                                  description: classes.classDescription))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10), // Add spacing between columns
                Expanded(
                  flex: 1, // Set flex factor to 1 for equal width
                  child: Column(children: [
                    const Text('Clubs'),
                    Expanded(
                      // Wrap ListView in Expanded for full height
                      child: ListView(
                        children: clubListProvider.clubs
                            .map((club) => ListWidget(
                                icon: const Icon(Icons.menu_book),
                                title: club.clubTitle,
                                description: club.clubDescription))
                            .toList(),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1, // Set flex factor to 1 for equal width
                  child: Column(
                    children: [
                      const Text('Sports'),
                      Expanded(
                        // Wrap ListView in Expanded for full height
                        child: ListView(
                          children: sportListProvider.sports
                              .map((sport) => ListWidget(
                                  icon: const Icon(Icons.menu_book),
                                  title: sport.sportTitle,
                                  description: sport.sportDescription))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10), // Add spacing between columns
                Expanded(
                  flex: 1, // Set flex factor to 1 for equal width
                  child: Column(children: [
                    const Text('Community Service'),
                    Expanded(
                      // Wrap ListView in Expanded for full height
                      child: ListView(
                        children: serviceListProvider.services
                            .map((service) => ListWidget(
                                icon: const Icon(Icons.menu_book),
                                title: service.serviceTitle,
                                description: service.serviceDescription))
                            .toList(),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}
