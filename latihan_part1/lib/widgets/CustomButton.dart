import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final int color1, color2;
  final double opacity;

  CustomButton(
      {@required this.text,
      @required this.icon,
      this.color1,
      this.color2,
      this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.0,
      height: 44.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [BoxShadow(color: Color(color1), blurRadius: 25)],
          gradient: LinearGradient(colors: <Color>[
            Color(color1),
            Color(color2).withOpacity(opacity)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: 8.0,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "Roboto", fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
