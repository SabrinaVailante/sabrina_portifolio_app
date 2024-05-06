import 'package:flutter/material.dart';

class HobbiesView extends StatefulWidget {
  const HobbiesView({super.key});

  @override
  State<HobbiesView> createState() => _HobbiesViewState();
}

class _HobbiesViewState extends State<HobbiesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 167, 174, 1.0),
        title: Text(
          'Hobbies',
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1.0), fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(children: [
        _buildCircleHobby(Icon(Icons.music_note, color: Colors.white)),
        _buildCircleHobby(Icon(Icons.pets, color: Colors.white)),
        _buildCircleHobby(Icon(Icons.games, color: Colors.white)),
        _buildCircleHobby(Icon(Icons.music_note, color: Colors.white)),
        _buildCircleHobby(Icon(Icons.pets, color: Colors.white)),

      ]),
    );
  }

  Widget _buildCircleHobby(Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        child: icon,
        radius: 30,
        backgroundColor: Color.fromRGBO(36, 167, 174, 1.0),
      ),
    );
  }
}
