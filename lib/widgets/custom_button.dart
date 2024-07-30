import 'package:flutter/material.dart';
import 'mycolors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.containerHeight,
      required this.margin,
      required this.textSize,
      required this.borderRadius, this.backgroundButtonColor,
      });

  final String text;
  final double containerHeight;
  final double margin;
  final double textSize;
  final Color? backgroundButtonColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: margin),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: iconColor, borderRadius: BorderRadius.circular(borderRadius)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: textSize),
      ),
    );
  }
}
