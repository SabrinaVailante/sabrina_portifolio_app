import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/screens/about_me/perfil_screen.dart';
import 'package:sabrina_protifolio_app/screens/about_screen.dart';
import 'package:sabrina_protifolio_app/screens/experience_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_education/my_education_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_experiences/my_experiences_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_hobbies/my_hobbies_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_projects/my_projects_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    MyHobbiesScreen(),
    MyExperiencesScreen(),
    PerfilScreen(),
    MyEducationScreen(),
    MyProjectsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, color: Color.fromRGBO(
                31, 139, 147, 1.0)),
            label: 'Hobbies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Color.fromRGBO(
                31, 139, 147, 1.0)),
            label: 'Experiencias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(
                31, 139, 147, 1.0)),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Color.fromRGBO(
                31, 139, 147, 1.0)),
            label: 'Educação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android,
                color: Color.fromRGBO(
                    31, 139, 147, 1.0)),
            label: 'Projetos',
          ),
          
        ],
      ),
    );
  }

}
