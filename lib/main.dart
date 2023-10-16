import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Portfólio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
