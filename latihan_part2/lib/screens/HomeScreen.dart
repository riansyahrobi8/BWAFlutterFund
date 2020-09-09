import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:latihan_part2/screens/DetailScreen.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;
import 'package:flutter/services.dart' show rootBundle;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List data;

  Future<String> loadData() async {
    var jsonFile = await rootBundle.loadString("data/galeri_indonesia.json");
    setState(() {
      data = json.decode(jsonFile);
    });
  }

  @override
  void initState() {
    super.initState();
    this.loadData();
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
            style: TextStyle(
                color: myColor.titleColor,
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                fontSize: 18.0),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildHorizontalListView(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Terbaru",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  color: myColor.mainColor),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: data == null ? 0 : data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: size.width / (size.height / 1.25)),
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DetailScreen(
                        name: data[index]['name'],
                        account: data[index]['account'],
                        image: data[index]['image'],
                        placeName: data[index]['place_name'],
                      );
                    }));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                        image: AssetImage("images/" + data[index]["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}

Widget _buildHorizontalListView() {
  return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
      child: Container(
        height:
            120.0, // jadi tinggi cangkangnya harus didefnisikan terlebih dahulu
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) => Container(
                  width: 220.0,
                  margin: const EdgeInsets.only(right: 16.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image(
                        image: AssetImage("images/4251990.jpg"),
                        fit: BoxFit.cover,
                      )),
                )),
      ));
}
