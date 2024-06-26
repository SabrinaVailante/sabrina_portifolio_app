// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificates.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CertificatesModel _$CertificatesModelFromJson(Map<String, dynamic> json) =>
    CertificatesModel(
      nomeCurso: json['nome_curso'] as String,
      duracao: json['duracao'] as String,
      instrutores: (json['instrutores'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      dataConclusao: json['data_conclusao'] as String,
      nomeAluno: json['nome_aluno'] as String,
      numeroCertificado: json['numero_certificado'] as String?,
      urlCertificado: json['url_certificado'] as String?,
      imagemCertificado: json['imagem_certificado'] as String,
      valido: json['valido'] as bool?,
    );

Map<String, dynamic> _$CertificatesModelToJson(CertificatesModel instance) =>
    <String, dynamic>{
      'nome_curso': instance.nomeCurso,
      'duracao': instance.duracao,
      'instrutores': instance.instrutores,
      'data_conclusao': instance.dataConclusao,
      'nome_aluno': instance.nomeAluno,
      'numero_certificado': instance.numeroCertificado,
      'url_certificado': instance.urlCertificado,
      'imagem_certificado': instance.imagemCertificado,
      'valido': instance.valido,
    };
