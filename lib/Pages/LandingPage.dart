import 'package:flutter_india_sep/Services/responsiveness.dart';
import 'package:flutter_india_sep/Utils/AppInfo.dart';
import 'package:flutter_india_sep/widgets/count_down_timer.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: Color(0xff0B1B2B),
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: (Responsiveness.isLargeScreen(context))
                        ? AssetImage(AppInfo.imagecoverWeb)
                        : (Responsiveness.isMediumScreen(context))
                            ? AssetImage(AppInfo.imagecoverIPAD)
                            : AssetImage(AppInfo.imagecoverMobile),
                    fit: BoxFit.fill)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height / 5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppInfo.eventLogo),
                            fit: BoxFit.contain)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CountDownTimer(),
                ],
              ),
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 39),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width/3,
                        height: size.height / 10,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppInfo.timeInfo),
                                fit: BoxFit.contain)),
                      ),
                      Container(
                        width: size.width/3,
                        height: size.height / 5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppInfo.speakerInfo),
                                fit: BoxFit.contain)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
