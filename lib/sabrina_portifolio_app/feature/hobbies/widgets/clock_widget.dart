import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class ClockWidget extends StatefulWidget {
  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  DateTime _currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    // Atualizar o tempo a cada segundo
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: GestureDetector(
        onPanUpdate: (details) {
          // Lógica para mover os ponteiros aqui
        },
        child: CustomPaint(
          painter: ClockPainter(_currentTime),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final DateTime time;

  ClockPainter(this.time);

  @override
  void paint(Canvas canvas, Size size) {
    // Desenhar o mostrador do relógio
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      Paint()..color = Colors.black,
    );

    // Desenhar os ponteiros
    drawHourHand(canvas, size);
    drawMinuteHand(canvas, size);
    drawSecondHand(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  void drawHourHand(Canvas canvas, Size size) {
    final hourAngle = (360 / 12) * (time.hour % 12) + (360 / 12 / 60) * time.minute;
    final hourRadians = hourAngle * pi / 180;
    final hourHandLength = size.width * 0.2;
    final hourHandPaint = Paint()
      ..color = Color.fromRGBO(36, 166, 173, 1.0)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    final hourHandX = size.width / 2 + hourHandLength * cos(hourRadians);
    final hourHandY = size.height / 2 + hourHandLength * sin(hourRadians);

    canvas.drawLine(
      Offset(size.width / 2, size.height / 2),
      Offset(hourHandX, hourHandY),
      hourHandPaint,
    );
  }

  void drawMinuteHand(Canvas canvas, Size size) {
    final minuteAngle = (360 / 60) * time.minute + (360 / 60 / 60) * time.second;
    final minuteRadians = minuteAngle * pi / 180;
    final minuteHandLength = size.width * 0.3;
    final minuteHandPaint = Paint()
      ..color = Color.fromRGBO(20, 87, 91, 1.0)
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    final minuteHandX = size.width / 2 + minuteHandLength * cos(minuteRadians);
    final minuteHandY = size.height / 2 + minuteHandLength * sin(minuteRadians);

    canvas.drawLine(
      Offset(size.width / 2, size.height / 2),
      Offset(minuteHandX, minuteHandY),
      minuteHandPaint,
    );
  }

  void drawSecondHand(Canvas canvas, Size size) {
    final secondAngle = (360 / 60) * time.second;
    final secondRadians = secondAngle * pi / 180;
    final secondHandLength = size.width * 0.4;
    final secondHandPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    final secondHandX = size.width / 2 + secondHandLength * cos(secondRadians);
    final secondHandY = size.height / 2 + secondHandLength * sin(secondRadians);

    canvas.drawLine(
      Offset(size.width / 2, size.height / 2),
      Offset(secondHandX, secondHandY),
      secondHandPaint,
    );
  }
}
