import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Aguarda 2 segundos e, em seguida, navega para a próxima tela
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen() // Tela de destino
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/foto1.png"),
                // Imagem de fundo com transparência
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color:
                const Color.fromRGBO(21, 98, 122, 0.5019607843137255), // Cor roxa com transparência
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bem Vindo!",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 70,
                    color: Colors.white,
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
