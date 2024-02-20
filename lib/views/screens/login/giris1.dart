import 'package:flutter/material.dart';
import 'package:flutter_application_3/constanst.dart';
import 'package:flutter_application_3/views/screens/login/giris3.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class giris1 extends StatefulWidget {
  const giris1({super.key});

  @override
  State<giris1> createState() => _giris1State();
}

class _giris1State extends State<giris1> {
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
                  height: size.height * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(defaultBorderRadius),
                          topRight:
                              const Radius.circular(defaultBorderRadius))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.06, left: size.width * 0.05),
                        child: Text(
                          "Giriş yapmak için telefon numarası giriniz",
                          style: TextStyle(
                              fontSize: size.height * 0.035,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.06),
                        width: size.width * 0.9,
                        height: size.height * 0.20,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black, style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Telefon Numarası:",
                                style: TextStyle(
                                    fontSize: size.width * 0.040,
                                    fontWeight: FontWeight.w400),
                              ),
                              IntlPhoneField(
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 20)),
                                initialCountryCode: 'TR',
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                              )
                            ],
                          ),
                        ),
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
                                    builder: (context) => const giris3()),
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
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.2),
                        width: size.width * 0.6,
                        height: size.height * 0.050,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: size.width * 0.005,
                                color: primaryColor,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Hesabın yok mu? Hemen kayıt ol",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: size.width * 0.035),
                          ),
                        ),
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
