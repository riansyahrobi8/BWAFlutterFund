import 'package:flutter/material.dart';
import 'package:latihan_part2/screens/HomeScreen.dart';
import 'package:latihan_part2/widgets/CustomText.dart';
import 'package:latihan_part2/utils/CustomColor.dart' as myColor;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage("images/login_image.jpg"),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(0, 0, 0, .4),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 88.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Selamat Datang di Indonesia",
                fontFamily: "Oswald",
                color: myColor.titleColor,
                fontSize: 25,
              ),
              SizedBox(
                height: 24.0,
              ),
              CustomText(
                  text:
                      "Ini adalah aplikasi kumpulan foto dari berbagai daerah di Indonesia by Unsplash.com",
                  fontFamily: "Roboto",
                  color: myColor.subTitleColor)
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin:
                const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
            width: 366.0,
            child: Card(
              color: myColor.titleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: myColor.textFieldFillColor,
                          labelText: "Username",
                          isDense: true,
                          labelStyle: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 13.0,
                              color: myColor.subTitleColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: myColor.outlineTextFieldColor,
                                  width: 2.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0))),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: myColor.textFieldFillColor,
                          labelText: "Password",
                          isDense: true,
                          labelStyle: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 13.0,
                              color: myColor.subTitleColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: myColor.outlineTextFieldColor,
                                  width: 2.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0))),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56.0,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 0))
                            ],
                            color: myColor.mainColor,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: myColor.titleColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
