import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random valueRandom = Random();
  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Container(
        margin: const EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
        width: 50.0 + valueRandom.nextInt(251),
        height: 52.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Color.fromARGB(255, valueRandom.nextInt(256),
                valueRandom.nextInt(256), valueRandom.nextInt(256))),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BWA Flutter Fundamental",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "BWA Latihan 1",
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                Text(
                  "Selamat Datang, Hooman...",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Silahkan klik container untuk ubah warna dan ukuran panjang!",
                  style: TextStyle(
                      fontSize: 15, fontFamily: "Roboto", color: Colors.grey),
                ),
                SizedBox(
                  height: 48.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton.icon(
                        onPressed: () {},
                        color: Color(0xFFFF7D7D),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Hapus",
                          style: TextStyle(
                              fontFamily: "Roboto", color: Colors.white),
                        )),
                    RaisedButton.icon(
                        onPressed: () {},
                        color: Color(0xFF74F45F),
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Tambah",
                          style: TextStyle(
                              fontFamily: "Roboto", color: Colors.white),
                        )),
                  ],
                ),
                SizedBox(
                  height: 24.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widgets,
                )
              ],
            ),
          )),
    );
  }
}
