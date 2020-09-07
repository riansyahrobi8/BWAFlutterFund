import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:latihan_part2/screens/DetailScreen.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data;

  @override
  void initState() {
    super.initState();
    data = [];
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

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
        future: DefaultAssetBundle.of(context)
            .loadString("data/galeri_indonesia.json"),
        builder: (context, snapshot) {
          var places = json.decode(snapshot.data.toString());
          return GridView.builder(
              itemCount: places == null ? 0 : places.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: size.width / (size.height / 1.25)),
              padding: const EdgeInsets.all(4.0),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DetailScreen(
                        name: places[index]['name'],
                        account: places[index]['account'],
                        image: places[index]['image'],
                        placeName: places[index]['place_name'],
                      );
                    }));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                        image: AssetImage("images/" + places[index]["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
