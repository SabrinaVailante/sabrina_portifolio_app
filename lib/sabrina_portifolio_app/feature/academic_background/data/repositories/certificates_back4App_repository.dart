import 'package:dio/dio.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/data/models/certificates_Back4Ap_model.dart';

class CertificatesBack4AppRepository {
  final Dio _dio = Dio();

  CertificatesBack4AppRepository() {
    _dio.options.baseUrl = "https://parseapi.back4app.com/classes";
    _dio.options.headers["X-Parse-Application-Id"] =
        "kte9VO7cavkypNYayfwXUvdGzv3MOIFIAuK8tb6U";
    _dio.options.headers["X-Parse-REST-API-Key"] =
        "cVLczcE7CGit7an5WRNJHKtNBexQT3sGWcwHduTi";
    _dio.options.headers["Content-Type"] = "application/json";
  }

  Future<CertificatesBack4AppModel> obterCertificados() async {
    var url = '/Certificados';
    var result = await _dio.get(url);
    return CertificatesBack4AppModel.fromJson(result.data);
  }

  Future<void> addCertificates(CertificatesBack4AppModel certificatesBack4AppModel) async {
    var url = '/Certificados';
    var response = await _dio.post(url, data: certificatesBack4AppModel.toCreateJson());

    if (response.statusCode == 201) {
      print('Certificado adicionado com sucesso');
    } else {
      print('Erro ao adicionar o certificado');
    }
  }
}
