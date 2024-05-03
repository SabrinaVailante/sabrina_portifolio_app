import 'package:flutter/material.dart';

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
        _actualJob(),
        _currentYear(),
        _buildPoint(),
        _buildVerticalLine(),
        _buildItem(true, "MGS", "2023"),
        _buildItem(true, "", "2022"),
        _buildItem(true, "Central Sul", "2021"),
        _buildItem(true, "Calazans Transportes", "2020"),
        _buildItem(true, "GeraisLog", "2019"),
        _buildItem(true, "RodoReal", "2018"),
        _buildItem(true, "EMH", "2017"),
        _buildItem(true, "Kriare", "2017"),
        _buildItem(true, "WB Celulares", "2016"),
        _buildItem(true, "HVS - High Voltage Solutions", "2014"),
        _buildItem(true, "MGS", "2015"),
        _buildItem(true, "MGS", "2014"),
        _buildItem(true, "MGS", "2013"),
        _buildItem(true, "MGS", "2012"),
        _buildItem(true, "MGS", "2011"),
        _buildItem(true, "MGS", "2010"),
        _buildItem(true, "MGS", "2009"),
        _buildItem(true, "MGS", "2008"),
        _buildItem(true, "MGS", "2007"),
        _buildItem(true, "MGS", "2006"),
        _buildItem(true, "MGS", "2005"),
        _buildItem(true, "MGS", "2004"),
        _buildItem(true, "MGS", "2003"),
        _buildItem(true, "MGS", "2002"),
        _buildItem(true, "MGS", "2001"),
        _buildItem(true, "MGS", "1999"),
        _buildItem(true, "MGS", "1998"),
        _buildItem(true, "MGS", "1997"),
        _buildItem(true, "MGS", "1996"),
        _buildItem(true, "MGS", "1995"),
        _buildItem(true, "MGS", "1994"),
        _buildItem(true, "MGS", "1993"),
        _buildVerticalLine(),
        _buildVerticalLine(),
        _buildPoint(),
      ],
    );
  }

  Widget _actualJob() {
    return const Text(
      "Defensoria Pública de Minas Gerais",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1.0),
          fontWeight: FontWeight.bold),
    );
  }

  Widget _currentYear() {
    return const Text(
      "2024 \n Atualmente",
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

  Widget _buildHorizontalLine(String companyName, String year) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            companyName,
            softWrap: true,
            textAlign: TextAlign.end,
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
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
          child: Text(
            year,
            textAlign: TextAlign.start,
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
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
          _buildHorizontalLine(companyName!, year),
        ],
      ),
    );
  }
}
