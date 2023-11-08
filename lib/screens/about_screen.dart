import 'package:flutter/material.dart';
import '../widgets/custom_cart.dart';

class AboutMeScreen extends StatelessWidget {
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
              content:
                  'Sou um desenvolvedor de aplicativos móveis apaixonado por criar aplicativos incríveis com Flutter.',
            ),
            CustomCard(
              title: 'Experiência - Linha do tempo de xp',
              content:
                  'Trabalhei em várias empresas de desenvolvimento de software e tenho experiência em projetos de grande escala.',
            ),
            // CustomCard(
            //   title:
            //       'Habilidades - grafico de linha em cada uma das habilidades',
            //   content:
            //       'Domino linguagens como Dart, JavaScript, e tenho experiência em desenvolvimento web e móvel.',
            // ),
            // CustomCard(
            //   title: 'Educação linha do tempo de habilidades',
            //   content:
            //       'Bacharel em Sistems de Informação na Universidade Newton Paiva.',
            // ),
            // CustomCard(
            //   title: 'Hobbies',
            //   content:
            //       'Bacharel em Sistems de Informação na Universidade Newton Paiva.',
            // ),
            // CustomCard(
            //   title: 'Contato',
            //   content:
            //       'Email: sabrinavailante@hotmail.com\nTelefone: ((31) 9 9835-7032\n LINKEDIN',

          ],
        ),
      ),
    );
  }
}
