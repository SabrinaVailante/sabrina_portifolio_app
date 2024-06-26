import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/data/models/certificates.model.dart';


abstract class CertificatesDataSource{

  Future<List<CertificatesModel>> getCertificates();

}
Future<List<CertificatesModel>> getCertificates() async {

  List<CertificatesModel> certificates = [];
  return certificates;
}