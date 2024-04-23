import 'package:flutter/material.dart';

class DividerAndText extends StatelessWidget {
  final String dividerText;

  const DividerAndText({Key? key, required this.dividerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        children: [
          Text(
            dividerText,
            style: const TextStyle(fontFamily: "WorkSans", height: 1),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
              child: Container(
                color: const Color.fromARGB(106, 0, 0, 0),
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
