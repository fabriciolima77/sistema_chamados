import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sistema_chamados/widgets/button.dart';
import 'package:sistema_chamados/widgets/text_field.dart';

class AbrirChamado extends StatefulWidget {
  const AbrirChamado({ Key? key }) : super(key: key);

  @override
  _AbrirChamadoState createState() => _AbrirChamadoState();
}

class _AbrirChamadoState extends State<AbrirChamado> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        title: Image.asset('lib/images/sb-logo.png', fit: BoxFit.contain, width: 198,),
        backgroundColor: const Color(0xFFFFFFFF),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))
          ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Abrir Chamado",
                 style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                 textAlign: TextAlign.start,
                 ),
                const SizedBox(height:60),
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
                                hintText: "Solicitante",
                                controller: solicitanteController,
                                maxLines: 1,
                                ),
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
                                child: Text("Setor: "),
                              ),
                            ),
                            BuildTextField(
                                keyboardType: TextInputType.text,
                                hintText: "Setor em que você trabalha",
                                controller: departamentoController,
                                maxLines: 1,
                                ),
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
                                child: Text("E-mail: "),
                              ),
                            ),
                            BuildTextField(
                                keyboardType: TextInputType.emailAddress,
                                hintText: "E-mail institucional",
                                controller: emailController,
                                maxLines: 1,
                                ),
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
                                controller: numeroController,
                                maxLines: 1,
                                ),
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
                            hintText: "Resumo do chamado",
                            controller: tituloController,
                            maxLines: 1,
                            ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 500,
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
                              hintText: "Breve descrição do seu chamado",
                              controller: descricaoController,
                              maxLines: 5,
                              ),
                        ],
                      )),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 400,
                        height: 50,
                        child: BuildButton(
                          onPressed: (){
                            if(_formKey.currentState!.validate()){
                              iniciaChamado();
                            }
                          },
                          text: "ABRIR CHAMADO",
                          ),
                      )
                ]),
          ),
        ),  
      ),
    );
  }

void iniciaChamado() async {
  

    String _mensagem = "*👤 Solicitante:* ${solicitanteController.text}\n*🏢 Departamento:* ${departamentoController.text}\n*📧 E-Mail:* ${emailController.text}\n*📱 Número:* ${numeroController.text}\n*📄 Título:* ${tituloController.text}\n*📝 Descrição:* ${descricaoController.text}";
    String _url =
      'https://api.whatsapp.com/send/?phone=${Uri.encodeFull("+5585986364943")}&text=${Uri.encodeFull(_mensagem)}&app_absent=0';

    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Não foi possivel iniciar $_url';
    }
  }
  
}