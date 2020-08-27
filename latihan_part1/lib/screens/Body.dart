import 'dart:math';

import 'package:flutter/material.dart';
import 'package:latihan_part1/widgets/CustomButton.dart';
import 'package:latihan_part1/widgets/CustomText.dart';
import 'package:latihan_part1/utils/CustomColor.dart' as myColor;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Random valueRandom = Random();
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Selamat Datang, Hooman...",
                fontFamily: "Oswald",
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 8.0,
              ),
              CustomText(
                text:
                    "Silahkan klik container untuk ubah warna dan ukuran panjang!",
                fontFamily: "Roboto",
                fontSize: 15,
                color: Colors.grey,
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
                    child: CustomButton(
                      text: "Hapus",
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      color1: myColor.delButtonColor,
                      color2: myColor.delButtonColor,
                      opacity: .68,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widgets.add(_buildContainer());
                      });
                    },
                    child: CustomButton(
                      text: "Tambah",
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      color1: myColor.addButtonColor,
                      color2: myColor.addButtonColor,
                      opacity: .68,
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
        GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 400),
            padding: const EdgeInsets.only(bottom: 24.0),
            margin: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(
                          valueRandom.nextInt(256),
                          valueRandom.nextInt(256),
                          valueRandom.nextInt(256),
                          .9),
                      blurRadius: 60,
                      offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(12.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widgets,
            ),
          ),
        )
      ],
    );
  }

  Container _buildContainer() {
    return Container(
      margin: const EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
      width: 50.0 + valueRandom.nextInt(251),
      height: 52.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color.fromARGB(
              valueRandom.nextInt(256),
              valueRandom.nextInt(256),
              valueRandom.nextInt(256),
              valueRandom.nextInt(256))),
    );
  }
}
