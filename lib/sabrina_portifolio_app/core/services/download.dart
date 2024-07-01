import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class DownloadManager {
  Future<void> downloadFromAsset(String path) async {
    try {
      // Carrega os dados binários do arquivo a partir do pacote de recursos
      final byteData = await rootBundle.load(path);

      // Obtém o diretório temporário do dispositivo
      final directory = await getTemporaryDirectory();

      // Cria o caminho do arquivo no diretório temporário
      final filePath = '${directory.path}/${path.split('/').last}';

      // Cria um novo arquivo com os dados carregados
      final file = File(filePath);
      await file.writeAsBytes(byteData.buffer.asUint8List());

      // Abre o arquivo usando o aplicativo padrão do dispositivo
      await OpenFile.open(filePath);
    } catch (e) {
      // Captura e imprime qualquer exceção ocorrida durante o processo
      if (kDebugMode) {
        print('Erro ao baixar o arquivo: $e');
      }
    }
  }

  Future<void> downloadFromDrive(String fileUrl, String fileName) async {
    try {
      // Baixar o arquivo do Google Drive (ou qualquer URL)
      final response = await http.get(Uri.parse(fileUrl));
      final bytes = response.bodyBytes;

      // Obter o diretório temporário do dispositivo
      final directory = await getTemporaryDirectory();

      // Definir o caminho do arquivo local
      final filePath =
          '${directory.path}/$fileName.jpg'; // Defina o nome do arquivo e a extensão conforme necessário

      // Escrever os bytes do arquivo no arquivo local
      final file = File(filePath);
      await file.writeAsBytes(bytes);

      // Abrir o arquivo usando o aplicativo padrão do dispositivo
      await OpenFile.open(filePath);
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao baixar e abrir o arquivo: $e');
      }
    }
  }
}
