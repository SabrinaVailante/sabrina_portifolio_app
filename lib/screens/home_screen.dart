import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'aperfeicoando_screen.dart';
import 'experience_screen.dart';
import 'education_screen.dart';
import 'projects_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Portfólio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo ao meu portfólio!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              },
              child: Text('Sobre mim'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExperienceScreen()));
              },
              child: Text('Experiência'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EducationScreen()));
              },
              child: Text('Educação'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()));
              },
              child: Text('Projetos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AperfeicoandoScreen()));
              },
              child: Text('Aperfeiçoando...'),
            ),
          ],
        ),
      ),
    );
  }
}
