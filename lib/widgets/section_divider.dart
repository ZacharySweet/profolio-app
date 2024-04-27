import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  final String dividerText;

  const SectionDivider({Key? key, required this.dividerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Row(
        children: [
          Text(
            dividerText,
            style: const TextStyle(height: 1),
          ),
        ],
      ),
    );
  }
}
