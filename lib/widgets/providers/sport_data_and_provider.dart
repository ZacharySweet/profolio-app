import 'package:flutter/foundation.dart';

class SportData {
  final String sportTitle;
  final String sportDescription;

  const SportData({required this.sportTitle, required this.sportDescription});
}


class SportListProvider extends ChangeNotifier {
  List<SportData> sports = [];

  void addSport(String sportTitle, String sportDescription) async {
    sports.add(SportData(sportTitle: sportTitle, sportDescription: sportDescription));
    notifyListeners(); // Notify listeners about the change
  }
}


