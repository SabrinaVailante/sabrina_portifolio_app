import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/my_projects/view/projects_details_view.dart';

class MyProjectsView extends StatefulWidget {
  const MyProjectsView({Key? key}) : super(key: key);

  @override
  State<MyProjectsView> createState() => _MyProjectsViewState();
}

class _MyProjectsViewState extends State<MyProjectsView> {
  // Lista de projetos
  final List<String> projects = [
    'Projeto 1',
    'Projeto 2',
    'Projeto 3',
    'Projeto 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        title: Text(
          'Meus Projetos',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1.0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(36, 167, 174, 1.0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Descrição breve
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              loremIpsum(words: 30, paragraphs: 1),
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ),
          // PageView
          Expanded(
            child: Container(
              color: Colors.black,
              child: PageView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  // Construir cada projeto como um container
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 60, vertical: 80.0),
                    width: MediaQuery.of(context).size.width - 80, // Largura menor
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectDetailView()));
                        },
                        child: Image.asset(
                          'assets/images/chatbot.png',
                          fit: BoxFit
                              .cover, // Ajuste para ocupar todo o espaço disponível
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

