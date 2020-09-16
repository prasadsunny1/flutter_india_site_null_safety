import 'package:flutter/material.dart';
import 'package:flutter_india_sep/Pages/About.dart';
import 'package:flutter_india_sep/Pages/LandingPage.dart';

class HomePage extends StatelessWidget {
  List<Widget> buildList = [
   LandingPage(),
   AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      backgroundColor: Color(0xff0B1C2C),
      body: ListView(
        padding: const EdgeInsets.all(0.0),
        shrinkWrap: true,
        children: buildList,
      ),
    );
  }
}