import 'package:flutter/material.dart';

class CertificateView extends StatefulWidget {
  const CertificateView({super.key});

  @override
  State<CertificateView> createState() => _CertificateViewState();
}

class _CertificateViewState extends State<CertificateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(36, 167, 174, 1.0),
        title: Text(
          'Certificado de Nome',
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1.0), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Baixar Certificado",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.download,
                      color: Color.fromRGBO(36, 166, 173, 1.0),
                    )),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                height: 550,
                width: 350,
                color: Color.fromRGBO(36, 167, 174, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
