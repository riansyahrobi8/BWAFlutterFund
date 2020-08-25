import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                      fontSize: 15, fontFamily: "Roboto", color: Colors.grey),
                )
              ],
            ),
          )),
    );
  }
}
