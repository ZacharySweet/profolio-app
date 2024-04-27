import 'package:flutter/foundation.dart';

class ClassData {
  final String classTitle;
  final String classDescription;

  const ClassData({required this.classTitle, required this.classDescription});
}


class ClassListProvider extends ChangeNotifier {
  List<ClassData> classes = [];

  void addClass(String classTitle, String classDescription) async {
    classes.add(ClassData(classTitle: classTitle, classDescription: classDescription));
    notifyListeners(); // Notify listeners about the change
  }
}
