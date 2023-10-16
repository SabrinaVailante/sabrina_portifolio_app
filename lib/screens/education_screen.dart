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
              title: 'Bacharel em Ciência da Computação',
              content: 'Universidade XYZ\nAno de Conclusão: 20XX',
            ),
            CustomCard(
              title: 'Mestrado em Desenvolvimento de Software',
              content: 'Universidade ABC\nAno de Conclusão: 20XX',
            ),
            CustomCard(
              title: 'Certificado em Desenvolvimento Mobile',
              content: 'Instituto de Tecnologia 123\nAno de Conclusão: 20XX',
            ),
          ],
        ),
      ),
    );
  }
}
