import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class CompanyDetailsView extends StatefulWidget {
  final String companyName;

  const CompanyDetailsView({Key? key, required this.companyName}) : super(key: key);

  @override
  State<CompanyDetailsView> createState() => _CompanyDetailsViewState();
}

class _CompanyDetailsViewState extends State<CompanyDetailsView> {
  String description = loremIpsum(paragraphs: 1, words: 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      appBar: AppBar(
        title: Text(
          widget.companyName,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1.0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(36, 167, 174, 1.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assets/images/img.png'),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        widget.companyName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '2021 - 2024',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Text(
                  description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontSize: 14,
                  ),
                ),
              ),
              _buildCargo(),
              _buildCargo(),
              _buildCargo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCargo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Text(
          'Cargo: ',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Auxiliar Administrativo',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 14,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Período: ",
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '2022 á 2024',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 14,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Responsabilidades:",
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
