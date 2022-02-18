import 'package:flutter/material.dart';
import 'package:sistema_chamados/widgets/text_field.dart';

class AbrirChamado extends StatefulWidget {
  const AbrirChamado({ Key? key }) : super(key: key);

  @override
  _AbrirChamadoState createState() => _AbrirChamadoState();
}

class _AbrirChamadoState extends State<AbrirChamado> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController solicitanteController = TextEditingController();
  TextEditingController departamentoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abrir Chamado"),
        backgroundColor: const Color(0xFF25D366),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 245,
                      child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Nome do solicitante: "),
                              ),
                            ),
                            BuildTextField(
                                keyboardType: TextInputType.text,
                                hintText: "solicitante",
                                controller: solicitanteController),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 245,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Departamento: "),
                              ),
                            ),
                            BuildTextField(
                                keyboardType: TextInputType.text,
                                hintText: "departamento",
                                controller: departamentoController),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 245,
                      child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("e-mail: "),
                              ),
                            ),
                            BuildTextField(
                                keyboardType: TextInputType.emailAddress,
                                hintText: "e-mail",
                                controller: emailController),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 245,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(5),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Número Contato: "),
                              ),
                            ),
                            BuildTextField(
                                keyboardType: TextInputType.number,
                                hintText: "número contato",
                                controller: numeroController),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 500,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Título: "),
                          ),
                        ),
                        BuildTextField(
                            keyboardType: TextInputType.text,
                            hintText: "título",
                            controller: tituloController),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 500,
                      height: 400,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("Descrição: "),
                            ),
                          ),
                          BuildTextField(
                              keyboardType: TextInputType.text,
                              hintText: "descrição",
                              controller: descricaoController),
                        ],
                      ))
                ]),
          ),
        ),  
      ),
    );
  }
}