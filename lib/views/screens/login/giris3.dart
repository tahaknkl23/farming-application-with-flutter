import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';

class giris3 extends StatefulWidget {
  const giris3({super.key});

  @override
  State<giris3> createState() => _giris3State();
}

class _giris3State extends State<giris3> {
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
                padding: EdgeInsets.only(top: size.height * 0.08),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: size.width * 0.4,
                            child: Image.asset("assets/images/dghlogo.png")),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.05),
                width: size.width,
                height: size.height * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(defaultBorderRadius),
                        topRight: const Radius.circular(defaultBorderRadius))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height * 0.03,
                      ),
                      child: Text(
                        "SMS ONAYI",
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                        width: size.width * 0.9,
                        height: size.height * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: primaryColor, width: size.width * 0.01),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Column(children: [
                          Center(
                            child: Container(
                              width: size.width * 0.4,
                              child: TextField(
                                  style:
                                      TextStyle(fontSize: size.width * 0.185),
                                  decoration: InputDecoration(
                                      fillColor: Colors.green,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white)))),
                            ),
                          ),
                          Container(
                            width: size.width * 0.5,
                            height: size.height * 0.050,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const AnaEkran()),
                                  );
                                },
                                child: Text(
                                  "Giriş Yap",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.resolveWith(
                                  (states) => primaryColor,
                                ))),
                          ),
                        ])),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
