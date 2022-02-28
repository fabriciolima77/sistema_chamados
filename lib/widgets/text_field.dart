import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    Key? key,
    required this.keyboardType,
    required this.hintText,
    required this.controller,
    required this.maxLines,

    }) : super(key: key);

    final TextInputType keyboardType;
    final String hintText;
    final int maxLines;
    final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    validator: (value) {
      if(value == null || value.isEmpty){
        return("Campo Obrigatório!");
      }return null;
    },
    keyboardType: keyboardType,
    maxLines: maxLines,
    decoration: InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      hintStyle: TextStyle(color: Colors.grey[600]),
      filled: true,
      fillColor: Colors.white54,
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red)
      ),
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