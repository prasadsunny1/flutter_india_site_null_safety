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
      padding: EdgeInsets.symmetric(horizontal: 48),
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

        // page 2 on the screen
        Container(
          height: size.height,
          width: size.width,
          color: Color(0xff0B1B2B),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SessionItem1(),
              SizedBox(height: 24),
              SessionItem2(),
            ],
          ),
        )
      ],
    );
  }
}

class SessionItem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg"),
                  radius: 60,
                ),
                SizedBox(height: ,),
              ],
            ),
            SizedBox(width: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),
              Text(""),

            ],)

          ],
        ),
      ),
    );
  }
}

class SessionItem1 extends StatelessWidget {
  const SessionItem1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpeakerCard(
          image:
              "https://pbs.twimg.com/profile_images/796079953079111680/ymD9DY5g_400x400.jpg",
          name: "Filip Hráček",
          title: "Developer Advocate, Flutter",
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SessionHeader(),
              SizedBox(height: 16),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet maiores suscipit facere provident, reiciendis ab, soluta.',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white),
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
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      color: Colors.white24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "20:30 - 21:30",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            'The Future of the Web: and how to prepare for it now',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
