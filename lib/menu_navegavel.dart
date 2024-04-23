import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/screens/about_me/perfil_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_education/my_education_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_experiences/my_experiences_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_hobbies/my_hobbies_screen.dart';
import 'package:sabrina_protifolio_app/screens/my_projects/my_projects_screen.dart';

class MenuNavegavel extends StatefulWidget {
  @override
  _MenuNavegavelState createState() => _MenuNavegavelState();
}

class _MenuNavegavelState extends State<MenuNavegavel> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyHobbiesScreen(),
    MyExperiencesScreen(),
    PerfilScreen(),
    MyEducationScreen(),
    MyProjectsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.heart_broken_rounded, color: Colors.cyanAccent,),
          label: 'Hobbies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work, color: Colors.cyanAccent,),
          label: 'Experiências'
          ,

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.cyanAccent,),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school, color: Colors.cyanAccent,),
          label: 'Educação',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone_android, color: Colors.cyanAccent,),
          label: 'Projetos',
        ),


      ],
    );
  }
}



