import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/core/services/download.dart';

class DownloadButton extends StatelessWidget {
  final String label;
  final String arquivo;

  DownloadButton({super.key, required this.label, required this.arquivo});

  final DownloadManager _downloadManager = DownloadManager();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {
            _downloadManager.downloadFromAsset(arquivo);
          },
          icon: const Icon(Icons.download,
              color: Color.fromRGBO(36, 166, 173, 1.0)),
        ),
      ],
    );
  }
}
