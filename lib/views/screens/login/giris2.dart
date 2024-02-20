import 'package:flutter/material.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/views/screens/login/giris1.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class giris2 extends StatefulWidget {
  const giris2({super.key});

  @override
  State<giris2> createState() => _giris2State();
}

class _giris2State extends State<giris2> {
  bool isChecked = false;
  bool isChecked1 = false;
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(defaultBorderRadius),
                          topRight:
                              const Radius.circular(defaultBorderRadius))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.02),
                        child: Center(
                            child: Text(
                          "ÜYE OL",
                          style: TextStyle(
                              fontSize: size.width * 0.07,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                      title(
                        size: size,
                        metin: "İSİM SOYİSİM",
                      ),
                      input(size: size),
                      title(size: size, metin: "TELEFON NUMARASI"),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.width * 0.06, left: size.width * 0.06),
                        child: Container(
                          width: size.width * 0.9,
                          child: IntlPhoneField(
                            decoration: InputDecoration(),
                            initialCountryCode: 'TR',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),
                      title(size: size, metin: "TC KİMLİK NUMARASI"),
                      input(size: size),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.05, left: size.width * 0.05),
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              "Kullanım Koşulları Ve Kullanıcı\nSözleşmesi",
                              style: TextStyle(
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.03,
                            left: size.width * 0.05,
                            bottom: size.height * 0.01),
                        child: Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              value: isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked1 = value!;
                                });
                              },
                            ),
                            Text(
                              "Aydınlanma Metni",
                              style: TextStyle(
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              width: size.width * 0.3,
                              height: size.height * 0.05,
                              child: Center(
                                  child: Text(
                                "ÜYE OL",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.05,
                                    fontWeight: FontWeight.w600),
                              )),
                            )),
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const giris1()),
                              );
                            },
                            child: Container(
                              width: size.width * 0.6,
                              height: size.height * 0.050,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: size.width * 0.005,
                                      color: Colors.green,
                                      style: BorderStyle.solid),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Center(
                                child: Text(
                                  "Zaten üye misiniz ? Giriş yap",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: size.width * 0.04),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class input extends StatelessWidget {
  const input({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.05, left: size.width * 0.05),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.05,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 196, 194, 194),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.green,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(50)))),
        ),
      ),
    );
  }
}

class title extends StatelessWidget {
  const title({
    Key? key,
    required this.size,
    required this.metin,
  }) : super(key: key);

  final Size size;
  final String metin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.width * 0.06, left: size.width * 0.06),
      child: Text(
        metin,
        style:
            TextStyle(fontSize: size.width * 0.05, fontWeight: FontWeight.w500),
      ),
    );
  }
}
