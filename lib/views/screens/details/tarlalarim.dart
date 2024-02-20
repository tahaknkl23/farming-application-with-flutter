import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/views/screens/widgets/widgets.dart';

class tarlalarim extends StatefulWidget {
  const tarlalarim({super.key});

  @override
  State<tarlalarim> createState() => _tarlalarimState();
}

class _tarlalarimState extends State<tarlalarim> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: primaryColor,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.06),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                "assets/images/backbutton.png",
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AnaEkran()),
                                );
                              },
                              icon: Image.asset("assets/images/homeIcon.png"))
                        ],
                      ),
                      Center(
                        child: Text(
                          "Tarlalarım",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.06,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.05),
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(defaultBorderRadius),
                            topRight: Radius.circular(defaultBorderRadius))),
                    child: Column(
                      children: [
                        CategoryCards1(
                          size: size,
                          Text1: "Yeni Tarla Ekle",
                          Text2: "Tarla Bilgileri",
                          Text3: "Adres:",
                          Text4: "Parsel No:",
                          Text5: "Ekilen Ürün:",
                          iconName: Icons.add_circle,
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
