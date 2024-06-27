import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/profile/view/about_me_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/profile/view/contacts_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth;
                    double height = constraints.maxHeight;

                    // Calcula a posição e tamanho relativos usando porcentagens
                    double topPosition =
                        height * 0.170; // 20% da altura do contêiner
                    double leftPosition =
                        width * 0.19; // 19% da largura do contêiner
                    double imageWidth =
                        width * 0.60; // 60% da largura do contêiner

                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Lottie.asset('assets/lottie/perfil.json'),
                        Positioned(
                          top: topPosition,
                          left: leftPosition,
                          child: SizedBox(
                            width: imageWidth,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const AboutMeView(),
                                  ),
                                );
                              },
                              child: ClipOval(
                                child: Image.asset('assets/images/img.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,

                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 236, 255, 1.0),
                        Color.fromRGBO(0, 0, 0, 1.0),
                        Color.fromRGBO(0, 0, 0, 1.0),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text("Sabrina Vailante",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontFamily:
                                          "Montserrat-VariableFont_wght.ttf")),
                              SizedBox(height: 5),
                              Text("Desenvolvedora Mobile",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: "Montserrat")),
                              SizedBox(height: 5),
                              Text("Belo Horizonte - MG",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("3",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontFamily: "Montserrat")),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Anos",
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
                              Text("31",
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
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                                  "Desenvolvedora Mobile a 3 anos na Defensoria pública de Minas Gerais, com linguagem principal o Dart e framework Flutter.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white)))),
                      const SizedBox(height: 15),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(36, 167, 174, 1.0),
                            onPrimary: const Color.fromRGBO(196, 251, 255, 1.0),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactsView()),
                            );
                          },
                          child: const Text('Contacte-me')),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
