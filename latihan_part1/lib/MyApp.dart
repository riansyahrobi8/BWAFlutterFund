import 'package:flutter/material.dart';
import 'package:latihan_part1/screens/Body.dart';
import 'package:latihan_part1/utils/CustomColor.dart' as myColor;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BWA Flutter Fundamental",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "BWA Latihan 1",
              style: TextStyle(fontFamily: "Roboto"),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    myColor.appBarColor1,
                    myColor.appBarColor2.withOpacity(.9)
                  ])),
            ),
          ),
          backgroundColor: myColor.bodyColor,
          body: Body()),
    );
  }
}
