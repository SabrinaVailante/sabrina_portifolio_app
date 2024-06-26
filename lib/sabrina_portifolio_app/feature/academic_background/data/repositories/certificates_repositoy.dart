
import '../../doman/repositories/certificates_repository.dart';
import '../models/certificates.model.dart';

class CertificatesRepositoryImpl implements CertificatesRepository {
  Future<List<CertificatesModel>> getCertificates() async {
    List<CertificatesModel> certificates = [];
    return certificates;
  }
}