import 'package:flutter/material.dart';
import 'package:sistema_chamados/telas/login.dart';

void main() {
  runApp( MaterialApp(
    home: const LoginPage(),
    title: "Sistema de chamados",
    theme: ThemeData(
      primarySwatch: Colors.grey,
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black),
    ),
  ));
}

