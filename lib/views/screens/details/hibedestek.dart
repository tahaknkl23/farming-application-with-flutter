import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';

class Hibedestek extends StatefulWidget {
  const Hibedestek({super.key});

  @override
  State<Hibedestek> createState() => _HibedestekState();
}

class _HibedestekState extends State<Hibedestek> {
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
                          "Hibe Ve Destek",
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(defaultBorderRadius),
                          topRight: Radius.circular(defaultBorderRadius))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.04,
                            bottom: size.height * 0.04),
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.08,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  spreadRadius: 0.5,
                                  blurRadius: 3,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Hibe",
                                    style: TextStyle(
                                        fontSize: size.width * 0.05,
                                        color: Colors.black),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Destek",
                                      style: TextStyle(
                                          fontSize: size.width * 0.05,
                                          color: Colors.black)))
                            ],
                          ),
                        ),
                      ),
                      Category(
                          size: size,
                          image: "assets/images/tarla.jpg",
                          title:
                              "Kırsal Ekonomik Altyapı Yatırımlarının \ndesteklenemsi Programı ile de her proje \niçin  600 Bin TL'ye kadar proje tutarunun %50'si kadar hibe desteği verilmektedi.",
                          press: () {}),
                      Category(
                          size: size,
                          image: "assets/images/domates.png",
                          title: "Metin2",
                          press: () {}),
                      Category(
                          size: size,
                          image: "assets/images/biber.png",
                          title: "Metin2",
                          press: () {}),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.size,
    this.title,
    this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final title, image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height * 0.05),
      child: InkWell(
        onTap: press,
        child: Container(
          width: size.width * 0.85,
          height: size.height * 0.4,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 0.5,
                  blurRadius: 3,
                )
              ],
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                  width: size.width * 0.7,
                  height: size.height * 0.25,
                  child: Image.asset(image)),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01, left: size.width * 0.04),
                child: Text(title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontSize: size.width * 0.04,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
