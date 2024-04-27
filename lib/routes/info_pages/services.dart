import 'package:flutter/material.dart';
import 'package:profolio/widgets/community_list_widget.dart';
import 'package:profolio/widgets/providers/service_data_and_provider.dart'; // Import ServiceListProvider
import 'package:profolio/routes/add_pages/add_service.dart'; // Import AddService route
import 'package:profolio/widgets/section_divider.dart';
import 'package:provider/provider.dart'; // Import Provider

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  int totalHours = 0;

  void addService(
      String serviceTitle, String serviceDescription, int serviceHours) async {
    //  await Navigator.push(
    // context,
    //MaterialPageRoute(builder: (context) => const AddService()),
    //);

    Provider.of<ServiceListProvider>(context, listen: false)
        .addService(serviceTitle, serviceDescription, serviceHours);

    setState(() {
      totalHours += serviceHours;
    });
  }

  @override
  Widget build(BuildContext context) {
    final serviceListProvider =
        Provider.of<ServiceListProvider>(context); // Access provider

    totalHours = serviceListProvider.services
        .fold(0, (sum, service) => sum + service.serviceHours);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Community Service'),
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
                                  "Community service is another important part of your resume. It is a fantastic way of showing that you are both an active and positive contributer to the world around you.",
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
                                      // Access ServiceListProvider instance
                                      final serviceListProvider =
                                          Provider.of<ServiceListProvider>(
                                              context,
                                              listen: false);

                                      // Navigate to AddService and potentially receive data
                                      final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AddService()),
                                      );

                                      // Check if data is returned (optional)
                                      if (result != null) {
                                        final serviceTitle = result[0];
                                        final serviceDescription = result[1];

                                        // Use the stored provider instance to add the service
                                        serviceListProvider.addService(
                                            serviceTitle,
                                            serviceDescription,
                                            serviceHours ?? 0);
                                      }
                                    },
                                    child: const Text("Add Service"),
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
                const DividerAndText(dividerText: "Your Services"),
                Expanded(
                  child: ListView(
                    children: serviceListProvider
                        .services // Access services list from provider
                        .map((service) => CommunityListWidget(
                              title: service.serviceTitle,
                              description: service.serviceDescription,
                              hours: service.serviceHours,
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
