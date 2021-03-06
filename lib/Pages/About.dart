import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_india_sep/Services/launchString.dart';
import 'package:flutter_india_sep/Services/responsiveness.dart';
import 'package:flutter_india_sep/widgets/youtube.dart';

class AboutPage extends StatelessWidget {
  Widget gapbody(BuildContext context) {
    return SizedBox(
      height: Responsiveness.isSmallScreen(context)
          ? 30.0
          : Responsiveness.isMediumScreen(context) ? 15.0 : 30.0,
    );
  }

  Widget gapHeader = SizedBox(
    height: 70.0,
  );

  double HeaderFont({BuildContext context}) {
    if (Responsiveness.isLargeScreen(context)) {
      return 90.0;
    } else if (Responsiveness.isMediumScreen(context)) {
      return 47.0;
    } else if (Responsiveness.isSmallScreen(context)) {
      return 40.0;
    }
  }

  containerHeight(BuildContext context) {
    if (Responsiveness.isSmallScreen(context))
      return MediaQuery.of(context).size.height / 2;
    else if (Responsiveness.isLargeScreen(context))
      return MediaQuery.of(context).size.height / 1.5;
    else if (Responsiveness.isMediumScreen(context))
      return MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0),
        child: aboutPageFormat(context: context),
      ),
    );
  }

  bodyFont({BuildContext context}) {
    return Responsiveness.isSmallScreen(context) ? 13.0 : 25.0;
  }

  aboutPageFormat({BuildContext context}) {
    double headerfont = Responsiveness.isSmallScreen(context) ? 25.0 : 55.0;
    double imgSize = 525.0;
    var size = MediaQuery.of(context).size;
    return Responsiveness.isSmallScreen(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //     height: size.height / 3,
              //     padding: EdgeInsets.symmetric(
              //         horizontal: size.width / 15, vertical: 20),
              //     child: Youtube()),
              gapbody(context),
              Text(
                "When and Where",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsiveness.isSmallScreen(context) ? 25.0 : 55.0,
                ),
              ),
              gapbody(context),
              timeandloc(
                iconData: Icons.access_time,
                title: "3-hour starting from 10:00 am IST",
                iconsize: 25.0,
                textSize: 15.0,
                gap: 15.0,
              ),
              gapbody(context),
              timeandloc(
                  iconData: Icons.location_on,
                  title: "flutterindia.dev",
                  iconsize: 25.0,
                  textSize: 15.0,
                  gap: 15.0),
              gapbody(context),
              addToCalendar(
                context: context,
                fontsize: 13.0,
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gapHeader,
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "When and Where",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Responsiveness.isSmallScreen(context)
                                  ? 25.0
                                  : 55.0,
                            ),
                          ),
                          gapbody(context),
                          timeandloc(
                            iconData: Icons.access_time,
                            title: "3-hour starting from 10:00 am IST",
                          ),
                          gapbody(context),
                          timeandloc(
                            iconData: Icons.location_on,
                            title: "flutterindia.dev",
                          ),
                          gapbody(context),
                          addToCalendar(
                            context: context,
                            fontsize: 20.0,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Container(
                          height: size.height / 3,
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width / 15, vertical: 20),
                          child: Youtube()),
                    ),
                  ],
                ),
              ),
            ],
          );
  }

  RichText addToCalendar({BuildContext context, double fontsize = 20.0}) {
    return RichText(
      text: TextSpan(
          text: "Add to ",
          recognizer: TapGestureRecognizer()..onTap = () {},
          style: TextStyle(
            color: Colors.white54,
            fontSize: fontsize,
          ),
          children: <TextSpan>[
            TextSpan(
              text: " Calendar",
              style: TextStyle(
                color: Colors.white,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => Launch.launchUrl("https://bit.ly/3fRitu3"),
            ),
          ]),
    );
  }

  Row timeandloc(
      {IconData iconData,
      String title,
      double iconsize = 30.0,
      double textSize = 25.0,
      gap = 25.0}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: iconsize,
          color: Colors.white,
        ),
        SizedBox(
          width: gap,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textSize,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class studyWidget extends StatelessWidget {
  const studyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsiveness.isSmallScreen(context)) {
      return Container(
        child: Column(
          children: [
            Container(
              height: Responsiveness.isSmallScreen(context)
                  ? 200
                  : Responsiveness.isMediumScreen(context) ? 150.0 : 300,
              child: Image.asset(
                "assets/animations/study.gif",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Join us from anywhere around the world. This is a 100% virtual and free conference.\nWe are excited to see you!",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/animations/study.gif",
              scale: 1.5,
            ),
            Flexible(
              child: Text(
                "Join us from anywhere around the world. This is a 100% virtual and free conference.\nWe are excited to see you!",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
