class CertificatesBack4AppModel {
  List<Certificates> results = [];

  CertificatesBack4AppModel(this.results);

  CertificatesBack4AppModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Certificates>[];
      json['results'].forEach((v) {
        results.add(Certificates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toCreateJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['results'] = results.map((v) => v.toCreateJson()).toList();
    return data;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['results'] = results.map((v) => v.toJson()).toList();
      return data;
  }
}

class Certificates {
  String? objectId;
  String? createdAt;
  String? updatedAt;
  String? nomeCurso;
  String? duracao;
  String? instrutores;
  String? plataforma;
  String? dataConclusao;
  String? nomeAluno;
  String? numeroCertificado;
  String? urlCertificado;
  String? imagemCertificado;
  bool? valido;

  Certificates(
      {this.objectId,
        this.createdAt,
        this.updatedAt,
        this.nomeCurso,
        this.duracao,
        this.instrutores,
        this.plataforma,
        this.dataConclusao,
        this.nomeAluno,
        this.numeroCertificado,
        this.urlCertificado,
        this.imagemCertificado,
        this.valido});

  Certificates.criar(
      {
        this.nomeCurso,
        this.duracao,
        this.instrutores,
        this.plataforma,
        this.dataConclusao,
        this.nomeAluno,
        this.numeroCertificado,
        this.urlCertificado,
        this.imagemCertificado,
        this.valido});



  Certificates.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    nomeCurso = json['nome_curso'];
    duracao = json['duracao'];
    instrutores = json['instrutores'];
    plataforma = json['plataforma'];
    dataConclusao = json['data_conclusao'];
    nomeAluno = json['nome_aluno'];
    numeroCertificado = json['numero_certificado'];
    urlCertificado = json['url_certificado'];
    imagemCertificado = json['imagem_certificado'];
    valido = json['valido'];
  }
  Map<String, dynamic> toCreateJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome_curso'] = this.nomeCurso;
    data['duracao'] = this.duracao;
    data['instrutores'] = this.instrutores;
    data['plataforma'] = this.plataforma;
    data['data_conclusao'] = this.dataConclusao;
    data['nome_aluno'] = this.nomeAluno;
    data['numero_certificado'] = this.numeroCertificado;
    data['url_certificado'] = this.urlCertificado;
    data['imagem_certificado'] = this.imagemCertificado;
    data['valido'] = this.valido;
    return data;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['objectId'] = this.objectId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['nome_curso'] = this.nomeCurso;
    data['duracao'] = this.duracao;
    data['instrutores'] = this.instrutores;
    data['plataforma'] = this.plataforma;
    data['data_conclusao'] = this.dataConclusao;
    data['nome_aluno'] = this.nomeAluno;
    data['numero_certificado'] = this.numeroCertificado;
    data['url_certificado'] = this.urlCertificado;
    data['imagem_certificado'] = this.imagemCertificado;
    data['valido'] = this.valido;
    return data;
  }
}
