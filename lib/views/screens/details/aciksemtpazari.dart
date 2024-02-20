import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/constanst.dart';

class AcikSemtPazar extends StatefulWidget {
  const AcikSemtPazar({super.key});

  @override
  State<AcikSemtPazar> createState() => _AcikSemtPazarState();
}

class _AcikSemtPazarState extends State<AcikSemtPazar> {
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
                        "Açık Semt Pazarı",
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
                            bottom: size.height * 0.02,
                            top: size.height * 0.05),
                        child: Container(
                          width: size.width * 0.9,
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusColor: Colors.green,
                              hoverColor: Colors.green,
                              hintText: "ARA",
                              hintStyle: TextStyle(
                                color: Colors.green,
                                fontSize: size.width * 0.05,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.green,
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Category(
                              size: size,
                              image: "assets/images/kayisi-1.png",
                              title: "Kayisi",
                              title2: "Fiyat : 95TL",
                              press: () {}),
                          Category(
                              size: size,
                              image: "assets/images/domates.png",
                              title: "Domates",
                              title2: "Fiyat : 90TL",
                              press: () {}),
                          Category(
                              size: size,
                              image: "assets/images/patetes.png",
                              title: "Patetes",
                              title2: "Fiyat : 90TL",
                              press: () {}),
                          Category(
                              size: size,
                              image: "assets/images/biber.png",
                              title: "Biber",
                              title2: "Fiyat : 90TL",
                              press: () {}),
                          Category(
                              size: size,
                              image: "assets/images/biber.png",
                              title: "Biber",
                              title2: "Fiyat : 90TL",
                              press: () {}),
                          Category(
                              size: size,
                              image: "assets/images/biber.png",
                              title: "Biber",
                              title2: "Fiyat : 90TL",
                              press: () {}),
                        ],
                      ),
                    ],
                  )),
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
    this.image,
    this.title,
    this.title2,
    required this.press,
  }) : super(key: key);

  final Size size;
  final image, title, title2;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.02, bottom: size.height * 0.02),
      child: InkWell(
        onTap: press,
        child: Container(
          width: size.width * 0.90,
          height: size.height * 0.15,
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
                  margin: EdgeInsets.only(left: size.width * 0.03),
                  width: size.width * 0.4,
                  height: size.height * 0.4,
                  child: Image.asset(image)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.10, top: size.height * 0.04),
                    child: Text(title,
                        style: TextStyle(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.10, top: size.height * 0.02),
                    child: Text(title2,
                        style: TextStyle(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
