import 'package:flutter/material.dart';
import 'package:flutter_application_3/constanst.dart';

import '../home/anaekran.dart';

class Kbo extends StatefulWidget {
  const Kbo({super.key});

  @override
  State<Kbo> createState() => _KboState();
}

class _KboState extends State<Kbo> {
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
                height: size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(defaultBorderRadius),
                        topRight: Radius.circular(defaultBorderRadius))),
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.1),
                  child: Column(
                    children: [
                      Container(
                        width: size.width * 0.85,
                        height: size.height * 0.44,
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
                        child: Column(
                          children: [
                            Text(
                              "Malatya Tarımsal Kalkınma Ve Diğer\nTarımsal Amaçlı Kooperatifler Birliği",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.05),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.03),
                              width: size.width * 0.75,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.location_on,
                                    size: size.width * 0.08,
                                    color: Colors.red,
                                  ),
                                  hintText: 'Konum',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.02),
                              width: size.width * 0.75,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.list,
                                    size: size.width * 0.08,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.02),
                              width: size.width * 0.75,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.home_outlined,
                                    size: size.width * 0.08,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: size.height * 0.02),
                              width: size.width * 0.75,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    size: size.width * 0.08,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
