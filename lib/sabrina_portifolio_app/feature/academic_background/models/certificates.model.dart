import 'package:json_annotation/json_annotation.dart';

part 'certificates_model.g.dart'; // Arquivo gerado pelo build_runner

@JsonSerializable()
class CertificatesModel {
  String? nomeCurso;
  String? duracao;
  List<String>? instrutores;
  String? dataConclusao;
  String? nomeAluno;
  String? numeroCertificado;
  String? urlCertificado;
  String? imagemCertificado;
  bool? valido;

  CertificatesModel({
    this.nomeCurso,
    this.duracao,
    this.instrutores,
    this.dataConclusao,
    this.nomeAluno,
    this.numeroCertificado,
    this.urlCertificado,
    this.imagemCertificado,
    this.valido,
  });

  factory CertificatesModel.fromJson(Map<String, dynamic> json) =>
      _$CertificatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CertificatesModelToJson(this);
}
