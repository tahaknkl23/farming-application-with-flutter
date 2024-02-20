import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/constanst.dart';

class profil extends StatelessWidget {
  const profil({super.key});

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
                    Image.asset("assets/images/profil.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          size: size,
                          title: "Ad Soyad",
                        ),
                        Input(size: size),
                        Title(
                          size: size,
                          title: "Telefon Numarası",
                        ),
                        Input(size: size),
                        Title(
                          size: size,
                          title: "E-posta",
                        ),
                        Input(size: size),
                        Title(
                          size: size,
                          title: "Doğmum Yılı",
                        ),
                        Input(size: size),
                        Title(
                          size: size,
                          title: "Bulunduğunuz Konum",
                        ),
                        Input(size: size),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.05),
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
                            "Kaydet",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.05),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                            (states) => primaryColor,
                          ))),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      child: Padding(
        padding: EdgeInsets.only(bottom: size.height * 0.02),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.green,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.01),
      child: Text(
        title,
        style: TextStyle(fontSize: size.width * 0.05, color: Colors.grey),
      ),
    );
  }
}
