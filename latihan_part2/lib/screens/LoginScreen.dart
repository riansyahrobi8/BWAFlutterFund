import 'package:flutter/material.dart';
import 'package:latihan_part2/widgets/CustomText.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage("images/login_image.jpg"),
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(0, 0, 0, .4),
        )
      ],
    ));
  }
}
