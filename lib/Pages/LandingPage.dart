import 'package:flutter_india_sep/Utils/AppInfo.dart';
import 'package:flutter_india_sep/widgets/count_down_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_india_sep/widgets/speaker_card.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: Color(0xff0B1B2B),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                "Null Safety with Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              SelectableText(
                "3rd October 2020",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              CountDownTimer(),
              SizedBox(height: 40),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppInfo.backgroundColor,
                    ),
                  ),
                ),
                hoverElevation: 8,
                focusElevation: 8,
                hoverColor: Colors.white10,
              ),
            ],
          ),
        ),
        Container(
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
      ],
    );
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
     padding: EdgeInsets.symmetric(horizontal: 48,),
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
