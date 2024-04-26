import 'package:flutter/material.dart';
import 'package:profolio/routes/add_sport.dart';

class SportPage extends StatefulWidget {
  const SportPage({super.key});

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
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

                  AddSport(result[0], result[1]);
                },
                child: const Text("Add Sport"))
          ],
        ),
      ),
    );
  }
}
