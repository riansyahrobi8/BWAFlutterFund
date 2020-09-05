import 'package:flutter/material.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor.mainColor,
        title: Center(
          child: Text(
            "Indonesia",
            style: TextStyle(color: myColor.titleColor, fontFamily: "Roboto"),
          ),
        ),
      ),
    );
  }
}
