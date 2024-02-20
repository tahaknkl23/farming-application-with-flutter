import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';

class YetistirmeOnerileri extends StatefulWidget {
  const YetistirmeOnerileri({super.key});

  @override
  State<YetistirmeOnerileri> createState() => _YetistirmeOnerileriState();
}

class _YetistirmeOnerileriState extends State<YetistirmeOnerileri> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.green,
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                    children: [
                      Category(
                        size: size,
                        metin:
                            "Kayısı fidanı için ekim zamanı kasım\nayının 1 veya 2.haftasından sonra başlar.\nBazı bölge koşullarına ve rakım \nözelliklerinebağlı olarak Nisan ayının son \nhafatasında dadikim işlemi yapılabilir.",
                        title: "Dikim",
                        press: () {},
                      ),
                      Category(
                        size: size,
                        metin:
                            "Kayısı bahçelerinde sonbahar\nmevsimindetoprak 15-20 cm derinliğinde\nköklere zarar vermemeye dikkat ederek \nsürüm yapılmasıfaydalı olur.Toprağı \nişlenmiş kayısı yağmur ve kar sularını\n daha iyi tuttuğundan ağaçlar\nsağlıklı ve verimli olur",
                        title: "Toprak\nİşleme",
                        press: () {},
                      ),
                      Category(
                        size: size,
                        metin:
                            "To get instant change user \n input data in the flutter text? \n form field, onChange() method is used. \nYou setState() inside it as below.\n The name variable give you the instant\n changes from TextFormField.",
                        title: "başlık3",
                        press: () {},
                      ),
                      Category(
                        size: size,
                        metin:
                            "To get instant change user \n input data in the flutter text? \n form field, onChange() method is used. \nYou setState() inside it as below.\n The name variable give you the instant\n changes from TextFormField.",
                        title: "başlık4",
                        press: () {},
                      ),
                      Category(
                        size: size,
                        metin:
                            "To get instant change user \n input data in the flutter text? \n form field, onChange() method is used. \nYou setState() inside it as below.\n The name variable give you the instant\n changes from TextFormField.",
                        title: "başlık5",
                        press: () {},
                      ),
                      Category(
                        size: size,
                        metin:
                            "To get instant change user \n input data in the flutter text? \n form field, onChange() method is used. \nYou setState() inside it as below.\n The name variable give you the instant\n changes from TextFormField.",
                        title: "başlık6",
                        press: () {},
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

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.size,
    required this.title,
    required this.metin,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String title, metin;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.06),
      child: InkWell(
        onTap: press,
        child: Container(
          width: size.width * 0.85,
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
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, bottom: size.height * 0.09),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: size.width * 0.04, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: size.height * 0.00, left: size.width * 0.04),
                child: Text(metin),
              )
            ],
          ),
        ),
      ),
    );
  }
}
