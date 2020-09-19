import 'package:flutter/material.dart';

class SpeakerCard extends StatelessWidget {
  final String image;
  final String name;
  final String title;

  const SpeakerCard({Key key, this.image, this.name, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
