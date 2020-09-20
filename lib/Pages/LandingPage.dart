import 'package:flutter_india_sep/Pages/CommunityPage.dart';
import 'package:flutter_india_sep/Services/launchString.dart';
import 'package:flutter_india_sep/Utils/AppInfo.dart';
import 'package:flutter_india_sep/Services/responsiveness.dart';
import 'package:flutter_india_sep/widgets/count_down_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_india_sep/widgets/speaker_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

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
        ),
        CommunityPage(size: size),
        Container(
          width: size.width,
          color: AppInfo.footerColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: size.width / 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText(
                                  "Powered By",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: size.width / 4,
                                  child: WebsafeSvg.asset(
                                    AppInfo.gdgPower,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: size.width / 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SelectableText(
                                  "Follow us",
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    socialIcon(
                                      url: AppInfo.twitterHandle,
                                      iconPath: AppInfo.twitterIcon,
                                      context: context,
                                    ),
                                    socialIcon(
                                      url: AppInfo.facebookHandle,
                                      iconPath: AppInfo.facebookIcon,
                                      context: context,
                                    ),
                                    socialIcon(
                                      url: AppInfo.youtubeHandle,
                                      iconPath: AppInfo.youtubeIcon,
                                      context: context,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width - size.width / 4 - 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            "Communities",
                            textScaleFactor: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GridView.count(
                            childAspectRatio: 5,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount:
                                Responsiveness.isLargeScreen(context)
                                    ? 4
                                    : Responsiveness.isMediumScreen(context)
                                        ? 3
                                        : 2,
                            children:
                                List.generate(comunityName.length, (index) {
                              return Text(
                                comunityName[index],
                                textScaleFactor: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Made with Flutter 💙",
                  style: TextStyle(
                    color: AppInfo.textColor,
                    fontSize:
                        Responsiveness.isSmallScreen(context) ? 15.0 : 20.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 13.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Text(
                    "Flutter and the related logo are trademarks of Google LLC. Flutter India is not affiliated with or otherwise sponsored by Google LLC.",
                    style: TextStyle(
                      color: AppInfo.textColor,
                      fontSize:
                          Responsiveness.isSmallScreen(context) ? 12.0 : 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
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

GestureDetector socialIcon(
    {String url, String iconPath, BuildContext context}) {
  return GestureDetector(
    onTap: () => Launch.launchUrl(url),
    child: CircleAvatar(
      radius: Responsiveness.isSmallScreen(context) ? 15.0 : 25.0,
      backgroundImage: AssetImage(iconPath),
    ),
  );
}
