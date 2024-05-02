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
        child: Row(
          children: [
            Text("Nome da empresa   ",
                style: TextStyle(color: Colors.white, fontSize: 12)),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 167, 174, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            Container(
              height: 2,
              width: 60,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 167, 174, 1.0),
              ),
            ),
            Container(
              height: 50,
              width: 2,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 167, 174, 1.0),
              ),
            ),
            Container(
              height: 2,
              width: 30,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 167, 174, 1.0),
              ),
            ),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 167, 174, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            Text("   2021",
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget buildVerticalLine() {
    return Container(
      height: 50,
      width: 2,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(36, 167, 174, 1.0),
      ),
    );
  }
  Widget buildHorizontalLine() {
    return Container(
      height: 2,
      width: 60,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(36, 167, 174, 1.0),
      ),
    );
  }

}
