import 'package:flutter/material.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/constanst.dart';
import '../home/anaekran.dart';

class Gelirgider extends StatefulWidget {
  const Gelirgider({super.key});

  @override
  State<Gelirgider> createState() => _GelirgiderState();
}

class _GelirgiderState extends State<Gelirgider> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
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
                        "Gelir ve Giderler",
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
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
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
                          Karlar(size: size, ay: "Ocak", miktar: "0"),
                          Karlar(size: size, ay: "Şubat", miktar: "0"),
                          Karlar(size: size, ay: "Mart", miktar: "0"),
                          Karlar(size: size, ay: "Nisan", miktar: "0"),
                          Karlar(size: size, ay: "Mayıs", miktar: "0"),
                          Karlar(size: size, ay: "Haziran", miktar: "0"),
                          Karlar(size: size, ay: "Temmuz", miktar: "0")
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        )
      ]),
    );
  }
}

class Karlar extends StatelessWidget {
  const Karlar({
    Key? key,
    required this.size,
    required this.ay,
    required this.miktar,
  }) : super(key: key);

  final Size size;
  final String ay, miktar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: size.width * 0.06, bottom: size.height * 0.02),
      child: Container(
        width: size.width * 0.9,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: Text(
                ay,
                style: TextStyle(
                    fontSize: size.width * 0.07, fontWeight: FontWeight.w500),
              ),
            ),
            Image.asset("assets/images/money.png"),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    miktar,
                    style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Net Kar",
                    style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
