import 'package:flutter/material.dart';


import '../widgets/custom_cart.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experiência'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCard(
              title: 'Desenvolvedor de Aplicativos Mobile',
              content: 'Empresa XYZ\nPeríodo: Janeiro 20XX - Presente\nDescrição: Desenvolvimento de aplicativos móveis utilizando Flutter.',
            ),
            CustomCard(
              title: 'Engenheiro de Software',
              content: 'Empresa ABC\nPeríodo: Maio 20XX - Dezembro 20XX\nDescrição: Desenvolvimento de software e soluções para clientes corporativos.',
            ),
            CustomCard(
              title: 'Estagiário de Desenvolvimento Web',
              content: 'Empresa 123\nPeríodo: Setembro 20XX - Dezembro 20XX\nDescrição: Assistência na criação e manutenção de sites e aplicativos web.',
            ),
          ],
        ),
      ),
    );
  }
}
