import 'package:flutter/material.dart';

class FloatingPlusButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingPlusButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 20.0, // Adjust position from bottom
          right: 20.0, // Adjust position from right
          child: Material(
            shape: const CircleBorder(),
            color: Colors.lightBlueAccent, // Light blue background
            child: InkWell(
              // Handle taps
              onTap: onPressed,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.add, // Plus symbol
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
