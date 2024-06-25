import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/view/certificate_view.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/academic_background/widgets/card_certificado_widget.dart';

import '../../../core/widgets/sabrina_app_bar.widget.dart';

class AcademicBackgroundView extends StatelessWidget {
  const AcademicBackgroundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const SabrinaAppBarWidget(
        actions: [],
        icon: Icon(Icons.arrow_back),
        title: "Formação Acadêmica",
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
          onPressed: () {
            //TODO: Implementar Download
            _downloadCertificate();
          },
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
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        title: const Text(
          'Certificados',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          CardCertificateWidget(
            imagePath: "assets/cetificates/Net6.jpg",
            title1: '.Net 6 web API - Do zero ao avançado',
            title2: 'Ûndemy',
            title3: "14.5h",
            dateEnd: DateTime(2023, 07, 11),
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CertificateView(
                        imagePath: "assets/cetificates/Net6.jpg",
                        title: '.Net 6 web API - Do zero ao avançado')),
              );
            },
          ),
          CardCertificateWidget(
            imagePath: "assets/images/img.png",
            title1: 'Bacharel em Sistemas de Informação',
            title2: 'Newton Paiva',
            title3: "",
            // dateStart: DateTime(1984, 1, 1),
            dateEnd: DateTime(1984, 1, 1),
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CertificateView(
                        imagePath: 'assets/images/img.png', title: 't')),
              );
            },
          ),
          CardCertificateWidget(
            imagePath: "assets/images/img.png",
            title1: 'Bacharel em Sistemas de Informação',
            title2: 'Newton Paiva',
            title3: "",
            dateEnd: DateTime(1984, 1, 1),
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CertificateView(
                          imagePath: "assets/images/img.png",
                          title: "11",
                        )),
              );
            },
          ),
        ],
      ),
    );
  }

  void _downloadCertificate() {

  }
}
