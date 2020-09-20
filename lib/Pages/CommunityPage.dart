import 'package:flutter/material.dart';
import 'package:flutter_india_sep/Services/responsiveness.dart';

class CommunityPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              "Organized by",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GridView.count(
              childAspectRatio: Responsiveness.isLargeScreen(context)? 3:Responsiveness.isMediumScreen(context)?2:2.5,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: Responsiveness.isLargeScreen(context)? 3:Responsiveness.isMediumScreen(context)?2:1,
              children: List.generate(comunityName.length, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(''))
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText(
                      comunityName[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
List<String> comunityName=[
  'Flutter Mumbai',
  'Flutter Ahemadabad',
  'Flutter Trivandrum',
  'Flutter Vadodra',
  'Flutter Nagpur',
  'Flutter Gwalior',
  'Flutter Pune',
  'Flutter Bangalore',
  'Flutter Hyderabad',
  'Flutter Surat',
  'Flutter Kerala',
  'Flutter Kolkata'
];