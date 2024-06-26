import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/data/models/certificates.model.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/view/certificate_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/widgets/card_certificado_widget.dart';
import '../../../core/widgets/sabrina_app_bar.widget.dart';

class AcademicBackgroundView extends StatefulWidget {
  const AcademicBackgroundView({Key? key}) : super(key: key);

  @override
  _AcademicBackgroundViewState createState() => _AcademicBackgroundViewState();
}

class _AcademicBackgroundViewState extends State<AcademicBackgroundView> {
  List<CardCertificateWidget> _cardsCertificates = <CardCertificateWidget>[];

  @override
  void initState() {
    super.initState();
    _loadCertificates();
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
            _buildDownloadButton(),
            _buildTextField(label: 'Nome do curso'),
            _buildTextField(label: 'Instituição de ensino'),
            _buildDateRangeInput(),
            _buildButtonsRow(),
            const Divider(thickness: 0.4, color: Colors.white),
            Expanded(
              child: _buildCertificatesList(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDownloadButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          "Baixar Currículo",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: _downloadCertificate,
          icon: const Icon(Icons.download,
              color: Color.fromRGBO(36, 166, 173, 1.0)),
        ),
      ],
    );
  }

  Widget _buildTextField({required String label}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildDateRangeInput() {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: _buildTextField(label: 'Data de início'),
        ),
        const Spacer(),
        Expanded(
          flex: 8,
          child: _buildTextField(label: 'Data de término'),
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
          _buildElevatedButton(
              label: 'Pesquisar',
              color: const Color.fromRGBO(36, 167, 174, 1.0)),
          const SizedBox(width: 10),
          _buildElevatedButton(
              label: 'Limpar', color: const Color.fromRGBO(33, 139, 148, 1.0)),
        ],
      ),
    );
  }

  Widget _buildElevatedButton({required String label, required Color color}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildCertificatesList(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        ),
        title: const Text(
          'Certificados',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _cardsCertificates.length,
              itemBuilder: (context, index) {
                return _cardsCertificates[index];
              },
            ),
          ),
        ],
      ),
    );
  }

  void _downloadCertificate() {
    // TODO: Implementar lógica de download do certificado
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
          title2: (certificado.instrutores?.isNotEmpty ?? false) ? certificado.instrutores!.last : '',
          title3: certificado.duracao,
          dateEnd: DateTime.parse(
              certificado.dataConclusao ?? DateTime.now().toString()),
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CertificateView(
                  imagePath:
                      'https://drive.google.com/uc?export=view&id=19OwaNFjChUE9TM9Y_L8Vj-gTnmoibBkx',
                  title: certificado.nomeCurso ,
                ),
              ),
            );
          },
        );
      }).toList();

      setState(() {
        _cardsCertificates = listaCertificados;
      });
    } catch (e) {
      print('Erro ao carregar os certificados: $e');
    }
  }
}
