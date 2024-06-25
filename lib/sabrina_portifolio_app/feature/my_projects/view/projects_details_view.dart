import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/core/widgets/sabrina_app_bar.widget.dart';

class ProjectDetailView extends StatefulWidget {
  const ProjectDetailView({Key? key});

  @override
  State<ProjectDetailView> createState() => _ProjectDetailViewState();
}

class _ProjectDetailViewState extends State<ProjectDetailView> {
  String descricao = loremIpsum(words: 100, paragraphs: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: const SabrinaAppBarWidget(
          icon: Icon(Icons.arrow_back), title: "Projeto 1", actions: []),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 0),
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/chatbot.png',
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
                Padding(
                  padding: EdgeInsets.only(top: 380),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Nome do prejeto",
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
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: "RobotoMono-Regular",
                                  ),
                                ),
                                Text(descricao,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
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
