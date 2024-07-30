import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/material.dart';

class CustomContainerButton extends StatelessWidget {
  const CustomContainerButton(
      {super.key,
      required this.text,
      required this.width,
      required this.radius,
      required this.weight,
      required this.fontSize,
      this.containerHeight});

  final String text;
  final double width;
  final double radius;
  final FontWeight weight;
  final double fontSize;
  final double? containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight ?? 40.0,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(-2, 2),
              blurRadius: 5,
              spreadRadius: 0.2)
        ],
      ),
      child: Text(
        text,
        style:
            TextStyle(fontSize: fontSize, fontWeight: weight, color: textColor),
      ),
    );
  }
}


class CustomContainerButton1 extends StatelessWidget {
  const CustomContainerButton1(
      {super.key,
        required this.text,
        required this.width,
        required this.radius,
        required this.weight,
        required this.secondWeight,
        required this.fontSize,
        required this.secondText,
        this.containerHeight});

  final String text;
  final String secondText;
  final double width;
  final double radius;
  final FontWeight weight;
  final FontWeight secondWeight;
  final double fontSize;
  final double? containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight ?? 40.0,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          BoxShadow(
              color: iconColor,
              offset: Offset(-2, 1  ),
              blurRadius: 2,
              spreadRadius: 0.2)
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style:
            TextStyle(fontSize: fontSize, fontWeight: weight, color: textColor),
          ),
          const SizedBox(height: 5.0),
          Text(
            secondText,
            style:
            TextStyle(fontSize: fontSize, fontWeight: secondWeight, color: textColor),
          ),
        ],
      )
    );
  }
}
