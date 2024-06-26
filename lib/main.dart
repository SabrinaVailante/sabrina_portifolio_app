import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/splash_screen/view/splash_screen_view.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Portfólio",
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(39, 161, 172, 1.0),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color.fromRGBO(39, 161, 172, 1.0),
        )


       ),

      home : const SplashScreenView(),
    );
  }
}
