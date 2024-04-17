import 'package:flutter/material.dart';

class ReusableDropdown extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final void Function(String) onChanged;
  final String? hint; // Add a new 'hint' property

  const ReusableDropdown({
    Key? key,
    required this.items,
    required this.initialValue,
    required this.onChanged,
    this.hint, // Make the 'hint' property optional
  }) : super(key: key);

  @override
  State<ReusableDropdown> createState() => _ReusableDropdownState();
}

class _ReusableDropdownState extends State<ReusableDropdown> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,
      onChanged: (String? newValue) {
        setState(() {
          _selectedValue = newValue;
        });
        widget.onChanged(newValue!); // Call the onChanged callback
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row( // Use Row for better alignment
            children: <Widget>[
              if (widget.hint != null) Text(widget.hint!), // Show hint if provided
              Text(value),
            ],
          ),
        );
      }).toList(),
    );
  }
}