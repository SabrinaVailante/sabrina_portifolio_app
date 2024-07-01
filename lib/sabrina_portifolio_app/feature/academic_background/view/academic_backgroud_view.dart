import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/view/certificate_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/widgets/card_certificado_widget.dart';
import '../../../core/widgets/sabrina_app_bar.widget.dart';
import '../data/models/certificates.model.dart';
import '../widgets/download_Button_Widget.dart';
import '../widgets/elevate_button_widget.dart';

class AcademicBackgroundView extends StatefulWidget {
  const AcademicBackgroundView({Key? key}) : super(key: key);

  @override
  _AcademicBackgroundViewState createState() => _AcademicBackgroundViewState();
}

class _AcademicBackgroundViewState extends State<AcademicBackgroundView> {
  List<CardCertificateWidget> _cardsCertificates = <CardCertificateWidget>[];
  List<CardCertificateWidget> _filteredCertificates = <CardCertificateWidget>[];
  final String curriculoPath = 'assets/curriculoSabrinaVailante202405.pdf';

  final TextEditingController _nomeDoCursoController = TextEditingController();
  final TextEditingController _instituicaoController = TextEditingController();
  final TextEditingController _dataInicioController = TextEditingController();
  final TextEditingController _dataFimController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadCertificates();
  }

  @override
  void dispose() {
    _nomeDoCursoController.dispose();
    _instituicaoController.dispose();
    _dataInicioController.dispose();
    _dataFimController.dispose();
    super.dispose();
  }

  void _filterCertificates() {
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

        if (dataInicio.isNotEmpty) {
          DateTime dataInicioDate =
              DateTime.tryParse(dataInicio) ?? DateTime(0);
          matchesDataInicio = certificado.dateEnd.isAfter(dataInicioDate) ||
              certificado.dateEnd.isAtSameMomentAs(dataInicioDate);
        }

        if (dataFim.isNotEmpty) {
          DateTime dataFimDate = DateTime.tryParse(dataFim) ?? DateTime.now();
          matchesDataFim = certificado.dateEnd.isBefore(dataFimDate) ||
              certificado.dateEnd.isAtSameMomentAs(dataFimDate);
        }

        return matchesNomeCurso &&
            matchesInstituicao &&
            matchesDataInicio &&
            matchesDataFim;
      }).toList();
    });
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
            const Divider(thickness: 0.4, color: Colors.white),
            Expanded(
              child: _buildCertificatesList(),
            ),
          ],
        ),
      ),
    );
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
          child:
              _buildTextField(controller: _dataInicioController, label: 'Data de inicio'),
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
            onPressed: _filterCertificates,
          ),
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
      },
    );
  }

  Future<void> _loadCertificates() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/certificados.json');
      List<dynamic> listaJson = jsonDecode(jsonString);
      List<CardCertificateWidget> listaCertificados = listaJson.map((e) {
        CertificatesModel certificado = CertificatesModel.fromJson(e);
        return CardCertificateWidget(
          imagePath: certificado.imagemCertificado,
          title1: certificado.nomeCurso,
          title2: certificado.plataforma,
          title3: certificado.duracao,
          dateEnd: DateTime.parse(certificado.dataConclusao),
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CertificateView(
                  imagePath: certificado.imagemCertificado,
                  title: certificado.nomeCurso,
                ),
              ),
            );
          },
        );
      }).toList();

      setState(() {
        _cardsCertificates = listaCertificados;
        _filteredCertificates = listaCertificados; // Inicialmente, sem filtro
      });
    } catch (e) {
      print('Erro ao carregar os certificados: $e');
    }
  }
}
