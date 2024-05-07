import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/hobbies/view/hobbie_detail.view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/hobbies/widgets/clock_widget.dart';

class HobbiesView extends StatefulWidget {
  const HobbiesView({Key? key}) : super(key: key);

  @override
  State<HobbiesView> createState() => _HobbiesViewState();
}

class _HobbiesViewState extends State<HobbiesView> {
  final List<IconData> _icons = [
    Icons.music_note,
    Icons.pets,
    Icons.games,
    Icons.movie,
    Icons.book,
    Icons.airplanemode_active,
    Icons.restaurant,
    Icons.energy_savings_leaf,
    Icons.motorcycle,
    Icons.directions_run,
    Icons.brush,
    Icons.camera,
  ];

  double _angle = -pi / 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
          title: const Text('Hobbies',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontWeight: FontWeight.bold))),
      body: Center(
        child: Stack(
          children: [
            ..._buildCircleHobbies(),
            Positioned(
              left: MediaQuery.of(context).size.width / 2 -
                  100, // Ajusta a posição horizontal do relógio
              top: MediaQuery.of(context).size.height / 2 -
                  100, // Ajusta a posição vertical do relógio
              child: ClockWidget(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCircleHobbies() {
    List<Widget> circles = [];
    const double radius = 140.0; // Raio do círculo
    const double initialAngle =
        -pi / 2; // Ângulo inicial para posicionar os widgets
    final double incrementAngle =
        (2 * pi) / _icons.length; // Ângulo entre cada widget

    for (int i = 0; i < _icons.length; i++) {
      double angle = initialAngle + (i * incrementAngle);
      double x = radius * cos(angle);
      double y = radius * sin(angle);

      circles.add(
        Positioned(
          left: MediaQuery.of(context).size.width / 2 + x - 30,
          top: MediaQuery.of(context).size.height / 2 + y - 30,
          child: _buildCircleHobby(
            Icon(
              _icons[i],
              color: Colors.white,
            ),
          ),
        ),
      );
    }
    return circles;
  }

  Widget _buildCircleHobby(Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HobbieDetailView()));
            },
            child: icon),
      ),
    );
  }
}
