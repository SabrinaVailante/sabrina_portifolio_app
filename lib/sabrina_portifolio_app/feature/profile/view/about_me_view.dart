import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 167, 174, 1.0),
        title: Text('Sobre mim', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0), fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/img.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  height: 600,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 236, 255, 0.0),
                        Color.fromRGBO(0, 236, 255, 0.0),
                        Color.fromRGBO(0, 236, 255, 0.0),
                        Color.fromRGBO(0, 236, 255, 1),
                        Color.fromRGBO(0, 0, 0, 1.0),
                        Color.fromRGBO(0, 0, 0, 1.0),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 380),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Olá,\n Eu sou a Sabrina Vailante!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Divider(thickness: 0.5, color: Colors.white),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(25.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "🌱 Desenvolvedora Mobile em desenvolvimento!\n"
                                      "💼 Trabalho como Desenvolvedora Mobile na Defensoria Publica de Minas Gerais.\n"
                                      "🎓 Estudante de Sistemas de Informação na Newton Paiva.\n"
                                      "📖 Aprendendo Desenvolvimento Mobile em Flutter.\n",
                                  textAlign: TextAlign.justify, style: TextStyle(

                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: "RobotoMono-Regular", ),
                                ),
                                Text(
                                    "Apaixonada por tecnologia e sua capacidade de tornar nossas vidas mais eficientes. Meu objetivo é trabalhar em projetos que explorem o potencial da tecnologia para economizar tempo e criar valor para as pessoas e empresas. Acredito que, ao aplicar soluções tecnológicas inovadoras em nossas vidas cotidianas, podemos tornar o mundo um lugar mais produtivo e sustentável.",
                                    textAlign: TextAlign.justify, style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: "RobotoMono-Regular",
                                    )),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
