import 'package:flutter/material.dart';
import 'package:sistema_chamados/telas/abrir_chamado.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/images/sb-logo.png', fit: BoxFit.contain, width: 198,),
        backgroundColor: const Color(0xFFFFFFFF),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))
          ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
              width: 200,
              height: 200,
              color: const Color(0xFFFFFFFF),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AbrirChamado())),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFFFFFF)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                   Icon(Icons.computer_outlined, size: 50, color: Colors.black,),
                   Text("Abrir Chamado",
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold
                    ),
                   ),
                ],)
                ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 200,
              height: 200,
              color: const Color(0xFFFFFFFF),
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFFFFFF)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.search_outlined,
                   size: 50,
                   color: Colors.black,
                   ),
                   Text("Pesquisar Chamado",
                     style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold )
                       ),
                ],)
                ),
            )
          ],
          ),
      ),
    );
  }
}