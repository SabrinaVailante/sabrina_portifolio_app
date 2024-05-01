import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/home_screen.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/dashboard/view/dashboard_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));

    _textAnimation = IntTween(begin: 0, end: "Bem Vindo!".length).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0, 0.8, curve: Curves.easeInOut)));

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => DashboardView()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/splashscreen.png"),
                      fit: BoxFit.cover))),
          Container(color: const Color.fromRGBO(0, 0, 0, 0.8)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    final text =
                        "Bem Vindo!".substring(0, _textAnimation.value);
                    return Text(text,
                        style: const TextStyle(
                            fontFamily: "RobotoMono-Regular.ttf",
                            fontSize: 70,
                            color: Color.fromRGBO(36, 167, 174, 1.0)));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
