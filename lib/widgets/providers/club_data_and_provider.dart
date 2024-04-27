import 'package:flutter/foundation.dart';

class ClubData {
  final String clubTitle;
  final String clubDescription;

  const ClubData({required this.clubTitle, required this.clubDescription});
}


class ClubListProvider extends ChangeNotifier {
  List<ClubData> clubs = [];

  void addClub(String clubTitle, String clubDescription) async {
    clubs.add(ClubData(clubTitle: clubTitle, clubDescription: clubDescription));
    notifyListeners(); // Notify listeners about the change
  }
}


