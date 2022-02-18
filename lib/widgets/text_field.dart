import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    Key? key,
    required this.keyboardType,
    required this.hintText,
    required this.controller,

    }) : super(key: key);

    final TextInputType keyboardType;
    final String hintText;
    final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
    keyboardType: keyboardType,
    maxLines: null,
    decoration: InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      hintStyle: TextStyle(color: Colors.grey[600]),
      filled: true,
      fillColor: Colors.white54,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.greenAccent[400]!),
      ),
    ),
    textAlign: TextAlign.start,
    style: const TextStyle(color: Colors.black, fontSize: 15.0),
    controller: controller,
  );
  }
}