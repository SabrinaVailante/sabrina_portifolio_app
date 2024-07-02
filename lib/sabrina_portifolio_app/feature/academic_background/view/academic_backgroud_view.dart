import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/data/models/certificates_Back4Ap_model.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/view/certificate_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/widgets/card_certificado_widget.dart';
import '../../../core/widgets/sabrina_app_bar.widget.dart';
import '../data/repositories/certificates_back4App_repository.dart';
import '../widgets/download_Button_Widget.dart';
import '../widgets/elevate_button_widget.dart';

class AcademicBackgroundView extends StatefulWidget {
  const AcademicBackgroundView({Key? key}) : super(key: key);

  @override
  _AcademicBackgroundViewState createState() => _AcademicBackgroundViewState();
}

class _AcademicBackgroundViewState extends State<AcademicBackgroundView> {
  final String curriculoPath = 'assets/curriculoSabrinaVailante202405.pdf';
  final TextEditingController _nomeDoCursoController = TextEditingController();
  final TextEditingController _instituicaoController = TextEditingController();
  final TextEditingController _dataInicioController = TextEditingController();
  final TextEditingController _dataFimController = TextEditingController();
  final TextEditingController _plataformaController = TextEditingController();
  final TextEditingController _nomeDoAlunoController = TextEditingController();
  final TextEditingController _numeroCertificadoController = TextEditingController();
  final TextEditingController _urlCertificadoController = TextEditingController();
  final TextEditingController _imagemCertificadoController = TextEditingController();
  final TextEditingController _validoController = TextEditingController();
  final TextEditingController _instrutoresController = TextEditingController();
  final TextEditingController _duracaoController = TextEditingController();
  List<CardCertificateWidget> _cardsCertificates = <CardCertificateWidget>[];
  List<CardCertificateWidget> _filteredCertificates = <CardCertificateWidget>[];
  final CertificatesBack4AppRepository _certificatesBack4AppRepository =
  CertificatesBack4AppRepository();
  CertificatesBack4AppModel _certificates = CertificatesBack4AppModel([]);

  @override
  void initState() {
    super.initState();
    obterCertificados();
  }

  @override
  void dispose() {
    _nomeDoCursoController.dispose();
    _instituicaoController.dispose();
    _dataInicioController.dispose();
    _dataFimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const SabrinaAppBarWidget(
        actions: [],
        icon: Icon(Icons.arrow_back),
        title: "Formação Acadêmica",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DownloadButton(label: "Currículo", arquivo: curriculoPath),
            _buildTextField(
                controller: _nomeDoCursoController, label: 'Nome do curso'),
            _buildTextField(
                controller: _instituicaoController,
                label: 'Instituição de ensino'),
            _buildDateRangeInput(),
            _buildButtonsRow(),
            const Divider(thickness: 1, color: Colors.white),
            Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 36, 167, 174),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Certificados',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.add,
                      )
                    )
                  ],
                )),
            Expanded(
              child: _buildCertificatesList(),
            ),
          ],
        ),
      ),
    );
  }

  void obterCertificados() async {
    _certificates = await _certificatesBack4AppRepository.obterCertificados();
    setState(() {
      _cardsCertificates = _certificates.results
          .map((certificado) =>
          CardCertificateWidget(
            title1: certificado.nomeCurso!,
            title2: certificado.plataforma!,
            title3: certificado.instrutores!,
            dateEnd: certificado.dataConclusao!,
            imagePath: certificado.imagemCertificado!,
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CertificateView(
                        imagePath: certificado.imagemCertificado!,
                        title: certificado.nomeCurso!,
                      ),
                ),
              );
            },
          ))
          .toList();
      _filteredCertificates = _cardsCertificates;
    });
  }

  void filterCertificates() {
    String nomeCurso = _nomeDoCursoController.text.toLowerCase();
    String instituicao = _instituicaoController.text.toLowerCase();
    String dataInicio = _dataInicioController.text;
    String dataFim = _dataFimController.text;

    setState(() {
      _filteredCertificates = _cardsCertificates.where((certificado) {
        bool matchesNomeCurso = nomeCurso.isEmpty ||
            certificado.title1.toLowerCase().contains(nomeCurso);
        bool matchesInstituicao = instituicao.isEmpty ||
            certificado.title2.toLowerCase().contains(instituicao);
        bool matchesDataInicio = true;
        bool matchesDataFim = true;

        return matchesNomeCurso &&
            matchesInstituicao &&
            matchesDataInicio &&
            matchesDataFim;
      }).toList();
    });
  }

  Widget _buildTextField(
      {required TextEditingController controller, required String label}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(39, 161, 172, 1.0)),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildDateRangeInput() {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: _buildTextField(
              controller: _dataInicioController, label: 'Data de inicio'),
        ),
        const Spacer(),
        Expanded(
          flex: 8,
          child: _buildTextField(
              controller: _dataFimController, label: 'Data de término'),
        ),
      ],
    );
  }

  Widget _buildButtonsRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevateButtonWidget(
              label: 'Pesquisar',
              color: const Color.fromRGBO(36, 167, 174, 1.0),
              onPressed: () {
                filterCertificates();
                setState(() {
                  _filteredCertificates = _filteredCertificates;
                });
              }),
          const SizedBox(width: 10),
          ElevateButtonWidget(
            label: 'Limpar',
            color: const Color.fromRGBO(33, 139, 148, 1.0),
            onPressed: () {
              _nomeDoCursoController.clear();
              _instituicaoController.clear();
              _dataInicioController.clear();
              _dataFimController.clear();
              setState(() {
                _filteredCertificates = _cardsCertificates;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCertificatesList() {
    return ListView.builder(
        itemCount: _filteredCertificates.length,
        itemBuilder: (context, index) {
          return _filteredCertificates[index];
        });
  }

   addCertificate() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Adicionar Certificado'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nomeDoCursoController,
                decoration: const InputDecoration(
                  labelText: 'Curso',
                ),
              ),
              TextField(
                controller: _duracaoController,
                decoration: const InputDecoration(
                  labelText: 'Duração',
                ),
              ),
              TextField(
                controller: _instrutoresController,
                decoration: const InputDecoration(
                  labelText: 'Instrutores',
                ),
              ),
              TextField(
                controller: _plataformaController,
                decoration: const InputDecoration(
                  labelText: 'Instituição',
                ),
              ),
              TextField(
                controller: _dataFimController,
                decoration: const InputDecoration(
                  labelText: 'Data de Conclusão',
                ),
              ),
              TextField(
                controller: _nomeDoAlunoController,
                decoration: const InputDecoration(
                  labelText: 'Aluno',
                ),
              ),
              TextField(
                controller: _numeroCertificadoController,
                decoration: const InputDecoration(
                  labelText: 'Numero do certificado',
                ),
              ),
              TextField(
                controller: _urlCertificadoController,
                decoration: const InputDecoration(
                  labelText: 'link do certificado',
                ),
              ),
              TextField(
                controller: _imagemCertificadoController,
                decoration: const InputDecoration(
                  labelText: 'Certificado',
                ),
              ),
              TextField(
                controller: _validoController,
                decoration: const InputDecoration(
                  labelText: 'Valido',
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
            child: const Text('Adicionar'),
              onPressed: () {
                String nomeDoAluno = _nomeDoAlunoController.text;
                String nomeCurso = _nomeDoCursoController.text;
                String duracao = _duracaoController.text;
                String instrutores = _instrutoresController.text;
                String dataConclusao = _dataFimController.text;
                String plataforma = _plataformaController.text;
                String urlCertificado = _urlCertificadoController.text;
                String imagemCertificado = _imagemCertificadoController.text;
                String numeroCertificado = _numeroCertificadoController.text;
                String valido = _validoController.text;

                final certificate = Certificates(
                  nomeCurso: _nomeDoCursoController.text,
                  duracao: _duracaoController.text,
                  instrutores: _instrutoresController.text,
                  plataforma: _plataformaController.text,
                  dataConclusao: _dataFimController.text,
                  nomeAluno: _nomeDoAlunoController.text,
                  numeroCertificado: _numeroCertificadoController.text,
                  urlCertificado: _urlCertificadoController.text,
                  imagemCertificado: _imagemCertificadoController.text,
                  valido: true,
                );

                setState(() {
                  _cardsCertificates.add(CardCertificateWidget(
                      imagePath: imagemCertificado,
                      title1: nomeCurso,
                      title2: plataforma,
                      title3: duracao,
                      dateEnd: dataConclusao,
                      function: () {
                        Navigator.of(context).pop();
                        addCertificate();
                      }));
                Navigator.of(context).pop();

                });},),],
        );
      },
    );
  }
}