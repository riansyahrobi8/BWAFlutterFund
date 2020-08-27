import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text, fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  CustomText(
      {@required this.text,
      @required this.fontFamily,
      @required this.fontSize,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          color: color,
          fontWeight: fontWeight),
    );
  }
}
