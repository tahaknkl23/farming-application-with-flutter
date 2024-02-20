import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';

class Pazarfiyatlari extends StatefulWidget {
  const Pazarfiyatlari({super.key});

  @override
  State<Pazarfiyatlari> createState() => _PazarfiyatlariState();
}

class _PazarfiyatlariState extends State<Pazarfiyatlari> {
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
                          "Pazar Fiyatları",
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
                            image: "assets/images/resim8.png",
                            title: "Hal Fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim10.png",
                            title: "Borsa Fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim11.png",
                            title: "İlaç Fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim12.png",
                            title: "Gübre Fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim13.png",
                            title: "Yem fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim8.png",
                            title: "İlaç Fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim8.png",
                            title: "İlaç Fiyatları",
                            press: () {}),
                        Category(
                            size: size,
                            image: "assets/images/resim8.png",
                            title: "İlaç Fiyatları",
                            press: () {}),
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
      padding:
          EdgeInsets.only(top: size.height * 0.02, bottom: size.height * 0.02),
      child: InkWell(
        onTap: press,
        child: Container(
          width: size.width * 0.75,
          height: size.height * 0.1,
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
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: size.width * 0.08),
                  width: size.width * 0.15,
                  height: size.height * 0.15,
                  child: Image.asset(image)),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.15),
                child: Text(title,
                    style: TextStyle(
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
