import 'package:flutter/material.dart';
import 'package:sistema_chamados/home.dart';
import 'package:sistema_chamados/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController userControll = TextEditingController();
  TextEditingController passwordControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Image.asset('lib/images/sb-logo.png', fit: BoxFit.contain, width: 198),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: BuildTextField(
                      keyboardType: TextInputType.text,
                      icon: const Icon(Icons.person_outline),
                      hintText: "Nome do usuário",
                      controller: userControll,
                      maxLines: 1,
                      title: "Usuário: ",
                      obscure: false,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: BuildTextField(
                      keyboardType: TextInputType.visiblePassword,
                      icon: const Icon(Icons.password_outlined),
                      hintText: "Senha",
                      controller: passwordControll,
                      maxLines: 1,
                      title: "Senha: ",
                      obscure: true,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Home())),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                      ),
                      primary: Colors.greenAccent[400],
                    ),
                    child: const Text("LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
