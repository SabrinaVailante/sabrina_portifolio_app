import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(75, 21, 121, 1.0),
      appBar: AppBar(
        title: Text('Meus Contatos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ContactCard(
              icon: Icons.link,
              title: 'LinkedIn',
              contact: 'in/sabrina-vailante',
              onTap: () =>
                  _launchURL('https://www.linkedin.com/in/sabrina-vailante/'),
            ),
            ContactCard(
              icon: Icons.code,
              title: 'GitHub',
              contact: 'github.com/SabrinaVailante',
              onTap: () => _launchURL('https://github.com/SabrinaVailante'),
            ),
            ContactCard(
              icon: Icons.camera_alt,
              title: 'Instagram',
              contact: '@sabrinavailante',
              onTap: () =>
                  _launchURL('https://www.instagram.com/sabrinavailante/'),
            ),
            ContactCard(
              icon: Icons.email,
              title: 'E-mail',
              contact: 'sabrinavailante@hotmail.com',
              onTap: () => _launchURL('mailto:sabrinavailante@hotmail.com'),
            ),
            ContactCard(
              icon: Icons.message,
              title: 'WhatsApp',
              contact: '+55998357032',
              onTap: () => launch('https://wa.me/55998357032'),
            ),
            ContactCard(
              icon: Icons.phone,
              title: 'Telefone',
              contact: '+55 31 998357032',
              onTap: () => _launchURL('tel:+5531998357032'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String contact;
  final VoidCallback onTap;

  const ContactCard({
    required this.icon,
    required this.title,
    required this.contact,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(130, 78, 158, 1.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle:
            Text(contact, style: TextStyle(color: Colors.white, fontSize: 15)),
        onTap: onTap,
      ),
    );
  }
}
