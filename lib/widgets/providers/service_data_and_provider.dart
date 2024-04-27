import 'package:flutter/foundation.dart';

class ServiceData {
  final String serviceTitle;
  final String serviceDescription;
  final int serviceHours;
  const ServiceData({required this.serviceTitle, required this.serviceDescription, required this.serviceHours});
}


class ServiceListProvider extends ChangeNotifier {
  List<ServiceData> services = [];

  void addService(String serviceTitle, String serviceDescription, int serviceHours) async {
    services.add(ServiceData(serviceTitle: serviceTitle, serviceDescription: serviceDescription, serviceHours: serviceHours));
    notifyListeners(); // Notify listeners about the change
  }
}
