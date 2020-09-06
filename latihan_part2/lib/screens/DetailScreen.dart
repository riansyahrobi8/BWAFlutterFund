import 'package:flutter/material.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor.mainColor,
        title: Text("Detail"),
      ),
    );
  }
}
