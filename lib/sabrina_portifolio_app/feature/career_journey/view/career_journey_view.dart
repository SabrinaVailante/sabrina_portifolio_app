import 'package:flutter/material.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/feature/career_journey/view/company_details_view.dart';

class CareerJourneyView extends StatefulWidget {
  const CareerJourneyView({super.key});

  @override
  State<CareerJourneyView> createState() => _CareerJourneyViewState();
}

class _CareerJourneyViewState extends State<CareerJourneyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
        title: const Text(
          'Carreira profissional',
          style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1.0), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTimeLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeLine() {
    return Column(
      children: [
        const SizedBox(height: 20),
        _actualJob("Defensoria Pública de Minas Gerais"),
        _currentYear(DateTime.now().year.toString()),
        _buildPoint(),
        _buildVerticalLine(),
        _buildItem(false, "Bacharel emSistemas de Infomação", "2024"),
        _buildItem(true, "MGS", "2023"),
        _buildVerticalLine(),
        _buildItem(true, "Central Sul", "2021"),
        _buildItem(true, "Calazans Transportes", "2020"),
        _buildItem(true, "GeraisLog", "2019"),
        _buildItem(true, "RodoReal", "2018"),
        _buildItem(true, "EMH", "2017"),
        _buildItem(true, "Kriare", "2017"),
        _buildItem(true, "WB Celulares", "2016"),
        _buildVerticalLine(),
        _buildItem(true, "HVS - High Voltage Solutions", "2014"),
        _buildItem(true, "MGS", "2015"),
        _buildItem(false, "Técnico em Eletrônica - CEFET", "2014"),
        _buildItem(true, "Comal do Brasil", "2013"),
        _buildItem(false, "Aprendiz de Eletrica Industrial - SENAI", "2013"),
        _buildVerticalLine(),
        _buildItem(true, "Cerâmica Safran", "2011"),
        _buildItem(false, "Aprendiz de Mecanica Industrial - SENAI", "2011"),
        _buildVerticalLine(),
        _buildVerticalLine(),
        _buildVerticalLine(),
        _buildVerticalLine(),
        _buildPoint(),
        _currentYear("1993"),
        _actualJob("Nasci"),
      ],
    );
  }

  Widget _actualJob(String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => CompanyDetailsView(companyName: text)));
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _currentYear(year) {
    return Text(
      "$year",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1.0),
          fontWeight: FontWeight.bold),
    );
  }

  Widget _buildPoint() {
    return Center(
      child: Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(36, 166, 173, 1.0),
        ),
      ),
    );
  }

  Widget _buildVerticalLine() {
    return Center(
      child: Container(
        height: 80,
        width: 2,
        color: const Color.fromRGBO(36, 166, 173, 1.0),
      ),
    );
  }

  Widget _buildHorizontalLine(bool isJob, String companyName, String year) {
    return isJob
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => CompanyDetailsView(companyName: companyName,)));
                  },
                  child: Text(
                    companyName,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
                  ),
                ),
              ),
              _buildPoint(),
              Container(
                height: 2,
                width: 80,
                color: const Color.fromRGBO(36, 166, 173, 1.0),
              ),
              _buildPoint(),
              SizedBox(
                width: 150,
                child: Text(
                  year,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  year,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
                ),
              ),
              _buildPoint(),
              Container(
                height: 2,
                width: 80,
                color: const Color.fromRGBO(36, 166, 173, 1.0),
              ),
              _buildPoint(),
              SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => CompanyDetailsView(companyName: companyName,)));
                  },
                  child: Text(
                    companyName,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
                  ),
                ),
              ),
            ],
          );
  }

  Widget _buildItem(bool isJob, String? companyName, String year) {
    return Container(
      child: Stack(
        children: [
          _buildVerticalLine(),
          _buildHorizontalLine(isJob, companyName!, year),
        ],
      ),
    );
  }
}
