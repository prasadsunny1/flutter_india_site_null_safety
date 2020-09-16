import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final color;

  const AboutPage({Key key, this.color}) : super(key: key);
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: widget.color,
    );
  }
}