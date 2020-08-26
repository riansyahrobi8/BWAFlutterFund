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

  // _MyAppState() {
  //   for (int i = 0; i < 10; i++) {
  //     widgets.add(Container(
  //       margin: const EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
  //       width: 50.0 + valueRandom.nextInt(251),
  //       height: 52.0,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(8.0),
  //           color: Color.fromARGB(255, valueRandom.nextInt(256),
  //               valueRandom.nextInt(256), valueRandom.nextInt(256))),
  //     ));
  //   }
  // }

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
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                    Color(0xFFFE7F49),
                    Color(0xFFFFCC48).withOpacity(.9)
                  ])),
            ),
          ),
          backgroundColor: Color(0xFFFAFAFA),
          body: ListView(
            children: [
              Container(
                margin:
                    const EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          fontSize: 15,
                          fontFamily: "Roboto",
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 48.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widgets.removeLast();
                            });
                          },
                          child: Container(
                            width: 115.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFFF7D7D), blurRadius: 25)
                                ],
                                gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFFFF7D7D),
                                      Color(0xFFFF7D7D).withOpacity(.68)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Hapus",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widgets.add(Container(
                                margin: const EdgeInsets.only(
                                    left: 24.0, top: 24.0, right: 24.0),
                                width: 50.0 + valueRandom.nextInt(251),
                                height: 52.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Color.fromARGB(
                                        255,
                                        valueRandom.nextInt(256),
                                        valueRandom.nextInt(256),
                                        valueRandom.nextInt(256))),
                              ));
                            });
                          },
                          child: Container(
                            width: 115.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF74F45F), blurRadius: 25)
                                ],
                                gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF74F45F),
                                      Color(0xFF74F45F).withOpacity(.68)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Tambah",
                                  style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 24.0),
                margin: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 50,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.circular(12.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widgets,
                ),
              )
            ],
          )),
    );
  }
}
