import 'package:flutter/material.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class DetailScreen extends StatelessWidget {
  final String image, name, account, placeName;

  DetailScreen({this.image, this.name, this.account, this.placeName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: myColor.mainColor,
          title: Text(
            "Detail",
            style: TextStyle(fontFamily: "Roboto", fontSize: 17.0),
          ),
        ),
        body: Stack(
          children: [
            Image(
              image: AssetImage("images/" + image),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Color.fromRGBO(0, 0, 0, 0.0),
                Color.fromRGBO(0, 0, 0, .1),
                Color.fromRGBO(0, 0, 0, .2),
                Color.fromRGBO(0, 0, 0, .3),
                Color.fromRGBO(0, 0, 0, .4),
                Colors.black
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 56.0),
                child: Text(
                  placeName,
                  style: TextStyle(
                      color: myColor.titleColor,
                      fontFamily: "Oswald",
                      fontSize: 18.0),
                ),
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.075,
                minChildSize: 0.075,
                maxChildSize: 1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Container(
                      decoration: BoxDecoration(
                          color: myColor.titleColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.0),
                              topRight: Radius.circular(24.0))),
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 24.0),
                                width: 130.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: myColor.mainColor),
                              ),
                            ),
                            Text(
                              "Photo by $name on Unsplash.com",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  color: myColor.mainColor,
                                  fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              account,
                              style: TextStyle(
                                  color: myColor.subTitleColor,
                                  fontFamily: "Roboto",
                                  fontSize: 12.0),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ));
  }
}
