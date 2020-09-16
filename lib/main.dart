import 'package:flutter/material.dart';
import 'package:flutter_india_sep/HomeScrean.dart';
import 'Utils/AppInfo.dart';
void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        canvasColor: AppInfo.backgroundColor,
        scaffoldBackgroundColor: AppInfo.backgroundColor,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white54,
        ),
      ),
      theme: ThemeData(
        backgroundColor: Color(0xff0B1B2B),
        primaryColor: Color(0xff3889CD),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
