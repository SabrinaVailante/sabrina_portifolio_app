import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/data/models/certificates.model.dart';

abstract class CertificatesRepository {
  Future<List<CertificatesModel>> getCertificates();
}