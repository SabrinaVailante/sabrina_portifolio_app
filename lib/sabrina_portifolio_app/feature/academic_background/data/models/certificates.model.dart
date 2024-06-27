import 'package:json_annotation/json_annotation.dart';

part 'certificates.model.g.dart'; // Arquivo gerado pelo build_runner

@JsonSerializable()
class CertificatesModel {
  @JsonKey(name: 'nome_curso')
  String nomeCurso;
  @JsonKey(name: 'duracao')
  String duracao;
  @JsonKey(name: 'instrutores')
  String instrutores;
  @JsonKey(name: 'plataforma')
  String plataforma;
  @JsonKey(name: 'data_conclusao')
  String dataConclusao;
  @JsonKey(name: 'nome_aluno')
  String nomeAluno;
  @JsonKey(name: 'numero_certificado')
  String? numeroCertificado;
  @JsonKey(name: 'url_certificado')
  String? urlCertificado;
  @JsonKey(name: 'imagem_certificado')
  String imagemCertificado;
  @JsonKey(name: 'valido')
  bool? valido;

  CertificatesModel({
    required this.nomeCurso,
    required this.duracao,
    required this.instrutores,
    required this.plataforma,
    required this.dataConclusao,
    required this.nomeAluno,
    required this.numeroCertificado,
    required this.urlCertificado,
    required this.imagemCertificado,
    required this.valido,
  });

  factory CertificatesModel.fromJson(Map<String, dynamic> json) =>
      _$CertificatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CertificatesModelToJson(this);
}
