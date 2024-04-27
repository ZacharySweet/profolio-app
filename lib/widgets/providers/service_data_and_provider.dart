import 'package:flutter/foundation.dart';

class ServiceData {
  final String serviceTitle;
  final String serviceDescription;

  const ServiceData({required this.serviceTitle, required this.serviceDescription});
}


class ServiceListProvider extends ChangeNotifier {
  List<ServiceData> services = [];

  void addService(String serviceTitle, String serviceDescription) async {
    services.add(ServiceData(serviceTitle: serviceTitle, serviceDescription: serviceDescription));
    notifyListeners(); // Notify listeners about the change
  }
}
