import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sabrina_protifolio_app/screens/about_me/contato.dart';


class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 226, 231, 1.0),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Lottie.asset('assets/lottie/perfil.json'),
                Positioned(top: 80,left:80, child: Container(
                  width: 245
                  , child: ClipOval(child: Image.asset('assets/images/img.png'))),
                )

              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 380,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(16, 74, 79, 1.0),
                      Color.fromRGBO(84, 228, 243, 1.0),
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
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: "Montserrat-VariableFont_wght.ttf",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Desenvolvedora Mobile",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: "Montserrat",
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Belo Horizonte - MG",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const Text("1",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: const [
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
                          children: const [
                            Text("|",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: const [
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
                          children: const [
                            Text("|",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: "Montserrat")),
                          ],
                        ),
                        Column(
                          children: const [
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
                    const SizedBox(height: 10),
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
                          primary: const Color.fromRGBO(34, 109, 114, 1.0),
                          onPrimary: const Color.fromRGBO(196, 251, 255, 1.0),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ContactScreen()),
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
