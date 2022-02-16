import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: Text('Sistema de chamados SB'),
      content: NavigationView(
          appBar: const NavigationAppBar(
            title: Text("Sistema de chamados SB")),
          pane: NavigationPane(
            displayMode: PaneDisplayMode.auto,
            items: [
              PaneItem(
                icon: const Icon(Icons.desktop_windows_outlined),
                title: const Text("Abrir chamado")
              ),
              PaneItem(
                icon: const Icon(Icons.search_outlined),
                title: const Text("Pesquisar chamado")
              )
            ] 
          ),
      ),
    );
  }
}