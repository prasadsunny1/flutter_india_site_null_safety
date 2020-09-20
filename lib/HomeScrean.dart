import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_india_sep/Pages/About.dart';
import 'package:flutter_india_sep/Pages/CommunityPage.dart';
import 'package:flutter_india_sep/Pages/Footer.dart';
import 'package:flutter_india_sep/Pages/LandingPage.dart';
import 'package:flutter_india_sep/Pages/SessionDetails.dart';

import 'Utils/AppInfo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onPageChanged(var index) {
    setState(() {
      currentPageValue  = index;
      controller.animateToPage(currentPageValue.toInt(),
          duration: Duration(milliseconds: 1000), curve: Curves.decelerate);
    });
  }
  List<Widget> buildList = [
   LandingPage(),
   AboutPage(),
   SessionDetails(),
   CommunityPage(),
   Footer()
  ];

PageController controller = PageController();

var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
  setState(() {
    currentPageValue = controller.page;
  });
});
    return Scaffold(
      appBar: (currentPageValue!=0.0)?AppBar(
        backgroundColor: (currentPageValue==0.0)?AppInfo.backgroundColor:AppInfo.backgroundColor,
        title: Text("Flutter India",style: TextStyle(color: Colors.white,fontSize: 20),textScaleFactor: 1.4,),
        centerTitle: false,
        actions: [
         ActionButton(onPressed: (){_onPageChanged(0.0);},txt: "Home",),
         ActionButton(onPressed: (){_onPageChanged(1.0);},txt: "About",),
         ActionButton(onPressed: (){_onPageChanged(2.0);},txt: "Speakers",),
         ActionButton(onPressed: (){_onPageChanged(3.0);},txt: "Scedule",),
        ],
        // Container(
        //   height: 10,
        //   width: 30,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/Logo/flutter_logo.png"),fit: BoxFit.cover)
        //   ),
        //  ),

      ):null,
      backgroundColor: Color(0xff0B1C2C),
      body: PageViewBuilder(controller: controller, buildList: buildList, currentPageValue: currentPageValue),
    
    // body: LandingPage(),
    );
  }
}

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({
    Key key,
    @required this.controller,
    @required this.buildList,
    @required this.currentPageValue,
  }) : super(key: key);

  final PageController controller;
  final List<Widget> buildList;
  final double currentPageValue;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // pageSnapping: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      // controller: controller,r
      children: buildList,
      // itemCount: buildList.length,
      // itemBuilder: (context, position){
      //    return buildList[position];
    //      if (position == currentPageValue.floor()) {
    // return Transform(
    //   transform: Matrix4.identity()..setEntry(3, 2, 0.004)..rotateY(currentPageValue - position)..rotateZ(currentPageValue - position),
    //   child: buildList[position]
    // );
    // } else if (position == currentPageValue.floor() + 1){
    // return Transform(
    //   transform: Matrix4.identity()..setEntry(3, 2, 0.004)..rotateY(currentPageValue - position)..rotateZ(currentPageValue - position),
    //   child: buildList[position]
    // );
    // } else {
    // return buildList[position];
    // }
  // },
  // itemCount: 10,
      
      // },  
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    this.onPressed,
    this.txt,
    Key key,
  }) : super(key: key);
  final onPressed;
  final txt;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
       onPressed: onPressed,
       child: Center(child: Text(txt,style: TextStyle(color: Colors.white,fontSize: 10),textScaleFactor: 1.4,),),);
  }
}