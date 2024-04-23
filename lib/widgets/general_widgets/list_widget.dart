import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(29, 0, 0, 0),
                  spreadRadius: 0.01,
                  blurRadius: 2)
            ]),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              FlutterLogo(size: 40),
              SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Title", textAlign: TextAlign.left),
                Text("Other Title", textAlign: TextAlign.left)
              ])
            ],
          ),
        ));
  }
}
