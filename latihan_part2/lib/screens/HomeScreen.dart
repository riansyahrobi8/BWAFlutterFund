import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data;

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
      body: FutureBuilder(
        builder: (context, snapshot) {
          var places = json.decode(snapshot.data.toString());

          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    Image(image: AssetImage("images/" + places[index]["image"]))
                  ],
                ),
              );
            },
            itemCount: places.length,
          );
        },
        future: DefaultAssetBundle.of(context)
            .loadString("data/galeri_indonesia.json"),
      ),
    );
  }
}
