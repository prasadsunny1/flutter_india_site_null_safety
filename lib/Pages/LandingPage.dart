import 'package:flutter_india_sep/Utils/AppInfo.dart';
import 'package:flutter_india_sep/widgets/count_down_timer.dart';
import 'package:flutter/material.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      shrinkWrap: true,
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
      ],
    );
  }
}
