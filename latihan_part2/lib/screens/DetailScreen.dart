import 'package:flutter/material.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class DetailScreen extends StatelessWidget {
  final String image, name, account, placeName;

  DetailScreen({this.image, this.name, this.account, this.placeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: myColor.mainColor,
          title: Text("Detail"),
        ),
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                child: Image(
                  image: AssetImage("images/" + image),
                  fit: BoxFit.cover,
                )),
            Text(
              placeName,
              style: TextStyle(color: myColor.titleColor, fontFamily: "Oswald"),
            )
          ],
        ));
  }
}
