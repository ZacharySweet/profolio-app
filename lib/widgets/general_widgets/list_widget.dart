import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.all(Radius.circular(10)), boxShadow: [BoxShadow(color: Colors.black)]), child: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(children: [FlutterLogo(size: 40), Column(children: [Text("Title"), Text("Other Title")])],),
    ));
  }
}