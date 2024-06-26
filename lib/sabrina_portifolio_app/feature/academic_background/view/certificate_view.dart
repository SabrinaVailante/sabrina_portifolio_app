import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para rootBundle
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/core/widgets/sabrina_app_bar.widget.dart';

class CertificateView extends StatefulWidget {
  final String imagePath;
  final String title;

  const CertificateView({super.key, required this.imagePath, required this.title});

  @override
  State<CertificateView> createState() => _CertificateViewState();
}

class _CertificateViewState extends State<CertificateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: SabrinaAppBarWidget(
        icon: const Icon(Icons.arrow_back),
        title: widget.title,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Baixar Certificado",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _downloadCertificate(widget.imagePath);
                  },
                  icon: const Icon(
                    Icons.download,
                    color: Color.fromRGBO(36, 166, 173, 1.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Center(
              child: Container(
                height: 550,
                width: 350,
                child: Image.network(widget.imagePath,),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _downloadCertificate(String imagePath) async {
    try {
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/${widget.title}.jpg';
      final byteData = await rootBundle.load(imagePath);
      final file = File(filePath);
      await file.writeAsBytes(byteData.buffer.asUint8List());

      await OpenFile.open(filePath);
    } catch (e) {
      print("Erro ao baixar o certificado: $e");
    }
  }
}
