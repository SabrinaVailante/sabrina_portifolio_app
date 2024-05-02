import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/view/academic_backgroud_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/career_journey/view/career_journey_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/hobbies/view/hobbies_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/my_projects/view/projects_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/profile/view/profile_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _currentIndex = 2;

  final List<Widget> _pages = [
    const HobbiesView(),
    const AcademicBackgroundView(),
    const ProfileView(),
     CareerJourneyView(),
    const MyProjectsView(),
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
            icon: Icon(Icons.heart_broken,
                color: Color.fromRGBO(31, 139, 147, 1.0)),
            label: 'Hobbies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Color.fromRGBO(31, 139, 147, 1.0)),
            label: 'Educação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(31, 139, 147, 1.0)),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Color.fromRGBO(31, 139, 147, 1.0)),
            label: 'Experiencias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android,
                color: Color.fromRGBO(31, 139, 147, 1.0)),
            label: 'Projetos',
          ),
        ],
      ),
    );
  }
}
