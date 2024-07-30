import 'package:flutter/material.dart';

class SchemeScreenContainerBox extends StatelessWidget {
  const SchemeScreenContainerBox(
      {super.key,
      required this.text,
      required this.color,
      required this.fontWeight,
      required this.fontSize});

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color(0xff1B3081),
              offset: Offset(-2, 2),
              blurRadius: 5,
              spreadRadius: 0.2)
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: color),
        ),
      ),
    );
  }
}
