import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para rootBundle
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/core/widgets/sabrina_app_bar.widget.dart';

import '../../../core/services/download.dart';

class CertificateView extends StatefulWidget {
  final String imagePath;
  final String title;

  const CertificateView(
      {super.key, required this.imagePath, required this.title});

  @override
  State<CertificateView> createState() => _CertificateViewState();
}

class _CertificateViewState extends State<CertificateView> {
  final DownloadManager _downloadManager = DownloadManager();

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
                    _downloadManager.downloadFromDrive(
                        widget.imagePath, widget.title);
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
                child: Image.network(
                  widget.imagePath,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
