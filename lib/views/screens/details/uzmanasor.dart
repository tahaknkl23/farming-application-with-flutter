import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/views/screens/widgets/widgets.dart';

class Uzmanasor extends StatefulWidget {
  const Uzmanasor({super.key});

  @override
  State<Uzmanasor> createState() => _UzmanasorState();
}

class _UzmanasorState extends State<Uzmanasor> {
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
                          "Uzmana Sor",
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
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CategoryCards(
                            width: size.width * 0.4,
                            height: size.height * 0.21,
                            press: () {},
                            image: "assets/images/resim14.png",
                            size: size,
                            title: "başlık1",
                          ),
                          Column(
                            children: [
                              CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                press: () {},
                                image: "assets/images/resim1.png",
                                size: size,
                                title: "başlık3",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CategoryCards(
                            press: () {},
                            image: "assets/images/resim1.png",
                            size: size,
                            title: "başlık2",
                            width: size.width * 0.4,
                            height: size.height * 0.21,
                          ),
                          Column(
                            children: [
                              CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                press: () {},
                                image: "assets/images/resim14.png",
                                size: size,
                                title: "başlık4",
                              ),
                            ],
                          ),
                        ],
                      ),
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
