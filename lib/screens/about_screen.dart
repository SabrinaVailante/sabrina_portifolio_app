import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/custom_cart.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre mim'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCard(
              title: 'Sobre mim',
              content: 'Sou um desenvolvedor de aplicativos móveis apaixonado por criar aplicativos incríveis com Flutter.',
            ),
            CustomCard(
              title: 'Experiência',
              content: 'Trabalhei em várias empresas de desenvolvimento de software e tenho experiência em projetos de grande escala.',
            ),
            CustomCard(
              title: 'Habilidades',
              content: 'Domino linguagens como Dart, JavaScript, e tenho experiência em desenvolvimento web e móvel.',
            ),
            CustomCard(
              title: 'Educação',
              content: 'Bacharel em Ciência da Computação na Universidade X.',
            ),
            CustomCard(
              title: 'Contato',
              content: 'Email: meuemail@example.com\nTelefone: (123) 456-7890',
            ),
          ],
        ),
      ),
    );
  }
}
