import 'package:flutter/material.dart';
import 'package:latihan_part2/screens/LoginScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Galeri Indonesia",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}