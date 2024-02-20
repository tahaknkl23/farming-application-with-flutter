import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/details/KBO.dart';
import 'package:flutter_application_3/views/screens/details/aciksemtpazari.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/views/screens/details/haberler.dart';
import 'package:flutter_application_3/views/screens/details/hesaplama.dart';
import 'package:flutter_application_3/views/screens/details/hibedestek.dart';
import 'package:flutter_application_3/views/screens/details/pazarfiyatlari.dart';
import 'package:flutter_application_3/views/screens/login/profil.dart';
import 'package:flutter_application_3/views/screens/details/tarlalarim.dart';
import 'package:flutter_application_3/views/screens/details/uzmanasor.dart';
import 'package:flutter_application_3/views/screens/details/yerlestirme%C3%B6nerileri.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/views/screens/widgets/widgets.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: size.width * 0.3,
                          child: Image.asset("assets/images/dghlogo.png")),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const profil()),
                            );
                          },
                          icon: Image.asset("assets/images/userIcons.png"))
                    ],
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: size.height * 0.03),
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(defaultBorderRadius),
                        topRight: const Radius.circular(defaultBorderRadius))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim1.png",
                                title: "Tarlalarım",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const tarlalarim()),
                                  );
                                }),
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim3.png",
                                title: "Uzmana Sor",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Uzmanasor()),
                                  );
                                }),
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim4.png",
                                title: "Açık Semt Pazar",
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AcikSemtPazar()));
                                }),
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim5.png",
                                title: "Haberler & Duyuru",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Haberler()),
                                  );
                                }),
                          ],
                        ),
                        Column(
                          children: [
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim7.png",
                                title: "Hibe & Destek",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Hibedestek()),
                                  );
                                }),
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim8.png",
                                title: "Pazar Fiyatları",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Pazarfiyatlari()),
                                  );
                                }),
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim9.png",
                                title: "Muhasebe / Cüzdan",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Hesaplama()),
                                  );
                                }),
                            CategoryCards(
                                width: size.width * 0.4,
                                height: size.height * 0.21,
                                size: size,
                                image: "assets/images/resim10.png",
                                title: "Yerleştirme Önerileri",
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const YetistirmeOnerileri()),
                                  );
                                }),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: size.width * 0.06, bottom: size.height * 0.04),
                      child: Column(
                        children: [
                          CategoryCards(
                              width: size.width * 0.88,
                              height: size.height * 0.15,
                              size: size,
                              image: "assets/images/resim10.png",
                              title: "Kooparatif ,Birlik ve Odalar",
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Kbo()),
                                );
                              }),
                          CategoryCards(
                              width: size.width * 0.88,
                              height: size.height * 0.15,
                              size: size,
                              image: "assets/images/resim9.png",
                              title: "Belediye Sosyal Tesisler",
                              press: () {}),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ]),
    );
  }
}
