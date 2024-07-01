import 'package:flutter/material.dart';

class ElevateButtonWidget extends StatelessWidget {
  final String label;
  final Color? color;
  final Function() onPressed;

  const ElevateButtonWidget(
      {super.key,
      required this.label,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color ?? const Color.fromRGBO(39, 161, 172, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
