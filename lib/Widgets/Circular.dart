import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circular extends StatelessWidget {
  final Color? color;
  final Color? color2;
  final Color? color3;
  final String? text;
  final double? Value;
  const Circular({Key? key, this.color, this.text, this.color2, this.color3, this.Value});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          value: Value, // This value represents the percentage (80% in this case)
          backgroundColor: color3,
          valueColor: AlwaysStoppedAnimation(color2),
          strokeWidth: 3.0,
          semanticsLabel: 'Attendance: 80%',
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        Text(
          text!, // Text to be displayed
          style: TextStyle(
            color: color,// Adjust the color of the text
            fontSize: 16, // Adjust the font size of the text
            fontWeight: FontWeight.bold, // Adjust the font weight of the text
          ),
        ),
      ],
    );
  }
}