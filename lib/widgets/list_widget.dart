import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final String description;
  final Icon icon;

  const ListWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Row(
        mainAxisSize: MainAxisSize.max, // Set Row to take maximum width
        children: [
          Expanded(
            // Wrap with Expanded for remaining space
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(29, 0, 0, 0),
                    spreadRadius: 0.01,
                    blurRadius: 2,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: icon,
                        )),
                    const SizedBox(width: 10),
                    Expanded(
                      // Wrap Column with Expanded for remaining space
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: const TextStyle(fontSize: 18)),
                          Text(description,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(117, 0, 0, 0))),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Color.fromARGB(92, 0, 0, 0),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
