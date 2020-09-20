import 'package:flutter/material.dart';
import 'package:flutter_india_sep/Pages/CommunityPage.dart';
import 'package:flutter_india_sep/Services/launchString.dart';
import 'package:flutter_india_sep/Services/responsiveness.dart';
import 'package:flutter_india_sep/Utils/AppInfo.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Container(
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
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width - size.width / 4 - 50,
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