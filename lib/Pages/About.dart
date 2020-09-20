import 'package:flutter/material.dart';
import 'package:flutter_india_sep/widgets/speaker_card.dart';

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
    return  Container(
          height: size.height,
          width: size.width,
          color: Color(0xff0B1B2B),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SessionHeader(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpeakerCard(
                    image:
                        "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg",
                    name: "Filip Hráček",
                    title: "Developer Advocate, Flutter",
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Future of the Web: and how to prepare for it now',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet maiores suscipit facere provident, reiciendis ab, soluta, consectetur adipisicing elit. Eveniet maiores suscipit facere provident, reiciendis ab, soluta, unde nostrum eligendi necessitatibus quia distinctio mollitia ipsa! Ad a, suscipit voluptatem atque cupiditate.',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
        ;
  }
}


class SessionHeader extends StatelessWidget {
  const SessionHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(
        horizontal: 48,
      ),
      color: Colors.white24,
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Session 1",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                "20:30 - 21:30",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

