import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final double textSize;
  final String text;
  final Color color;

  LargeText({Key? key,
    required this.textSize,
    required this.text,
    this.color = Colors.black
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
