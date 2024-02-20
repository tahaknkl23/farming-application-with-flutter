import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/views/screens/details/KBO.dart';
import 'package:flutter_application_3/views/screens/home/anaekran.dart';
import 'package:flutter_application_3/views/screens/login/giris1.dart';
import 'package:flutter_application_3/views/screens/login/giris2.dart';
import 'package:flutter_application_3/views/screens/details/haberler.dart';
import 'package:flutter_application_3/views/screens/details/hibedestek.dart';
import 'package:flutter_application_3/views/screens/details/pazarfiyatlari.dart';
import 'package:flutter_application_3/views/screens/login/profil.dart';
import 'package:flutter_application_3/views/screens/details/tarlalarim.dart';
import 'package:flutter_application_3/views/screens/details/uzmanasor.dart';
import 'package:flutter_application_3/views/screens/details/yerlestirme%C3%B6nerileri.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: giris2(),
    );
  }
}
