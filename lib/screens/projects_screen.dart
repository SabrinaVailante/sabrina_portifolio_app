import 'package:flutter/material.dart';
import '../widgets/custom_cart.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projetos'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCard(
              title: 'Aplicativo de Gerenciamento de Tarefas',
              content: 'Descrição: Desenvolvi um aplicativo de gerenciamento de tarefas usando Flutter e Firebase para armazenamento de dados.',
            ),
            CustomCard(
              title: 'Site de Portfólio Pessoal',
              content: 'Descrição: Criei um site de portfólio pessoal usando HTML, CSS e JavaScript para mostrar meu trabalho e experiência.',
            ),
            CustomCard(
              title: 'Aplicativo Mais Saúde',
              content: 'Descrição: Desenvolvi Aplicativo para auxliar ps pacientes a ter atendimento em postos de saúde.',
            ),
          ],
        ),
      ),
    );
  }
}
