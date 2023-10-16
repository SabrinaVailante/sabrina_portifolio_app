import 'package:flutter/material.dart';


import '../widgets/custom_cart.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educação'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCard(
              title: 'Graduanda em Sistemas de informação',
              content: 'Centro Cultural Newton Paiva\nAno de Conclusão: 2023',
            ),
            CustomCard(
              title: 'Tecnica em eletronica',
              content: 'CEFET\nAno de Conclusão: 2012',
            ),
            CustomCard(
              title: 'Certificado em Desenvolvimento Mobile',
              content: 'Instituto de Tecnologia 123\nAno de Conclusão: 2023',
            ),
            CustomCard(
              title: 'Certificado em Desenvolvimento Web',
              content: 'Instituto de Tecnologia 123\nAno de Conclusão: 2022',
            ),
            CustomCard(
              title: 'Certificado em Desenvolvimento Java',
              content: 'Instituto de Tecnologia 123\nAno de Conclusão: 2023',
            ),
          ],
        ),
      ),
    );
  }
}
