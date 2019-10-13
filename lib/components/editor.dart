import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final String key_name;

  Editor({this.controller, this.label, this.hint, this.key_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        key: Key(key_name),
        controller: controller,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint != null ? hint : null,
        ),
      ),
    );
  }
}
