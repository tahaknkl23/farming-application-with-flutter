import 'package:flutter/material.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/constanst.dart';
import '../home/anaekran.dart';

class Haberler extends StatefulWidget {
  const Haberler({super.key});

  @override
  State<Haberler> createState() => _HaberlerState();
}

class _HaberlerState extends State<Haberler> {
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
                        "Haberler",
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
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {}),
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {}),
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {}),
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {}),
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {}),
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {}),
                    Category(
                        size: size,
                        image: "assets/images/tarla.jpg",
                        title: "haber1",
                        press: () {})
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.03),
      child: InkWell(
        onTap: press,
        child: Container(
          width: size.width * 0.75,
          height: size.height * 0.35,
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
                  BorderRadius.all(Radius.circular(defaultBorderRadius))),
          child: Column(
            children: [
              Container(
                  width: size.width * 0.65,
                  height: size.height * 0.2,
                  child: Image.asset(image)),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.01, left: size.width * 0.04),
                child: Text(title,
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                      fontSize: size.width * 0.035,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
