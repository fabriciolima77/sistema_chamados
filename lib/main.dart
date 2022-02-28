import 'package:flutter/material.dart';
import 'package:sistema_chamados/home.dart';

void main() {
  runApp( MaterialApp(
    home: const Home(),
    title: "Sistema de chamados",
    theme: ThemeData(
      primarySwatch: Colors.grey,
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black),
    ),
  ));
}

