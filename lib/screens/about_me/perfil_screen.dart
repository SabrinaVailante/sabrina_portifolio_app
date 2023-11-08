import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/screens/about_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_education/my_education_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_experiences/my_experiences_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_projects/my_projects_screen.dart';
import '../aperfeicoando_screen.dart';
import '../projects_screen.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(47, 11, 105, 1),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(63, 16, 148, 1.0),
                      Color.fromRGBO(140, 88, 224, 1.0),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "Sabrina Vailante",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontFamily: "Montserrat-VariableFont_wght.ttf",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Desenvolvedora Mobile",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Belo Horizonte - MG",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Ano",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: "Montserrat")),
                            Text("de Experiência",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: [
                            Text("|",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: [
                            Text("30",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: "Montserrat")),
                            Text("Anos de idade",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: [
                            Text("|",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Graduada",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "Montserrat")),
                            Text("em Sistemas de Informação",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Desenvolvedora Mobile a 1 ano na Defensoria pública de Minas Gerais, com linguagem principal o Dart e framework Flutter.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white, // Define a cor desejada
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(184, 132, 194, 1),
                        onPrimary: Color.fromRGBO(70, 50, 109, 1),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 20,
                        ),
                      ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Botão pressionado!')),
                          );
                        },
                        child: const Text('Contacte-me')),
                    
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
