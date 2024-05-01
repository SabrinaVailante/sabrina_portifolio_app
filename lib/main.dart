import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/splash_screen/view/splash_screen_view.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Portfólio",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenView(),
    );
  }
}
