import 'package:flutter/material.dart';
import 'package:latihan_part1/screens/Body.dart';

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
                    Color(0xFFFE7F49),
                    Color(0xFFFFCC48).withOpacity(.9)
                  ])),
            ),
          ),
          backgroundColor: Color(0xFFFAFAFA),
          body: Body()),
    );
  }
}
