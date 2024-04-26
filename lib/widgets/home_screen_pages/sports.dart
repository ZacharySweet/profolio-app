import 'package:flutter/material.dart';
import 'package:profolio/routes/add_sport.dart';
import 'package:profolio/widgets/general_widgets/list_widget.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  List<ListWidget> sports = []; // List of the clubs

  void addSport(String sportTitle, String sportPosition) {
    ListWidget newSport =
        ListWidget(title: sportTitle, description: sportPosition);
    setState(() {
      sports.add(newSport);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 246, 246, 246),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddSport()),
                  );

                  addSport(result[0], result[1]);
                },
                child: const Text("Add Sport"))
          ],
        ),
      ),
    );
  }
}
