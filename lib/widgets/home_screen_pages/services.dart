import 'package:flutter/material.dart';
import 'package:profolio/widgets/providers/service_data_and_provider.dart'; // Import ServiceListProvider
import 'package:profolio/routes/add_service.dart'; // Import AddService route
import 'package:profolio/widgets/general_widgets/divider_and_text.dart';
import 'package:profolio/widgets/general_widgets/list_widget.dart';
import 'package:provider/provider.dart'; // Import Provider

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  // No need for a separate services list variable

void addService(String serviceTitle, String serviceDescription) async {
  //  await Navigator.push(
 // context,
  //MaterialPageRoute(builder: (context) => const AddService()),
  //);

  Provider.of<ServiceListProvider>(context, listen: false)
    .addService(serviceTitle, serviceDescription);
  }

  @override
  Widget build(BuildContext context) {
    final serviceListProvider = Provider.of<ServiceListProvider>(context); // Access provider

    return Container(
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
                              "Services are a crucial part of your high school resume. Being a high ranking member of various services can greatly increase your odds of being accepted into your dream college.",
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
                                  final serviceListProvider = Provider.of<ServiceListProvider>(context, listen: false);

  // Navigate to AddService and potentially receive data
                                  final result = await Navigator.push(
                                  context,
                                 MaterialPageRoute(builder: (context) => const AddService()),
                                 );

  // Check if data is returned (optional)
                                if (result != null) {
                                final serviceTitle = result[0];
                                final serviceDescription = result[1];

    // Use the stored provider instance to add the service
                                serviceListProvider.addService(serviceTitle, serviceDescription);
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
                children: serviceListProvider.services // Access services list from provider
                    .map((service) => ListWidget(title: service.serviceTitle, description: service.serviceDescription))
                    .toList(),
              ),
            

              )
            ],
          ),
        ));
  }
}
