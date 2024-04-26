import 'package:flutter/material.dart';
import 'package:profolio/routes/add_activity.dart';
import 'package:profolio/widgets/general_widgets/divider_and_text.dart';
import 'package:profolio/widgets/general_widgets/list_widget.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

// The actual code for the main page
class _ClubPageState extends State<ClubPage> {
  List<ListWidget> clubs = []; // List of the clubs

  void addClub(String clubTitle, String clubPosition) {
    ListWidget newClub =
        ListWidget(title: clubTitle, description: clubPosition);
    setState(() {
      clubs.add(newClub);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 246, 246, 246),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // Infographic at the top
              Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 2, 16),
                  // Infographic
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(12.5))),
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
                                  "Clubs are a crucial part of your high school resume. Being a high ranking member of various clubs can greately increase your odds of being accepted into your dream college.",
                                  overflow: TextOverflow.fade,
                                  maxLines: null,
                                  softWrap: true,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "WorkSans",
                                      fontSize: 12),
                                ),
                                const SizedBox(height: 4),
                                Align(
                                  alignment: Alignment
                                      .centerRight, // Align to the right
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      final result = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AddActivity()),
                                      );

                                      addClub(result[0], result[1]);
                                    },
                                    child: const Text("buttonText"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              // List of all the clubs the user is in
              const DividerAndText(dividerText: "Your Clubs"),
              Expanded(
                child: ListView(children: clubs.map((club) => club).toList()),
              )
            ],
          ),
        ));
  }
}
