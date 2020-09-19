import 'package:flutter/material.dart';

class SpeakerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg",
          ),
          radius: 120,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          'Filip Hráček',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        Text(
          'Developer Advocate, Flutter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
