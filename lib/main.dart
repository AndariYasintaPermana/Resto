import 'package:flutter/material.dart';
import 'package:uas/page/BarangPage.dart';
import 'package:uas/page/HomePage.dart';
import 'package:uas/page/KeranjangPage.dart';
import 'package:uas/tampilan_data/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => HomePage(),
        "keranjangPage": (context) => KeranjangPage(),
        "barangPage": (context) => BarangPage(),
        "home": (context) => Home(),
      },
    );
  }
}
