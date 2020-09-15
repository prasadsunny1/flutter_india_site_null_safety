import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}
Timer _timer;
int _start = 10;


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Color(0xff0B1B2B),
        primaryColor: Color(0xff3889CD),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int estimateTs = DateTime(2020, 9, 20, 6, 15, 30).millisecondsSinceEpoch; // set needed date


void startTimer() {
  const oneSec = const Duration(seconds: 1);
  _timer = new Timer.periodic(
    oneSec,
    (Timer timer) => setState(
      () {
        if (_start < 1) {
          timer.cancel();
        } else {
          _start = _start - 1;
        }
      },
    ),
  );
}
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
    body: StreamBuilder(
                      stream: Stream.periodic(Duration(seconds: 1), (i) => i),
                      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                        DateFormat formatMin = DateFormat("mm");
                        DateFormat formatSec = DateFormat("ss");
                        int now = DateTime
                            .now()
                            .millisecondsSinceEpoch;
                        Duration remaining = Duration(milliseconds: estimateTs - now);
                        var remainingDays ='${(remaining.inDays<10)?"0":""}${remaining.inDays}';
                        var remainingHours='${((remaining.inHours -(remaining.inDays*24))<10)?"0":""}${remaining.inHours -(remaining.inDays*24)}';
                        
                        var remainingMin = '${formatMin.format(
                            DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}';
                            var remainingSec = '${formatSec.format(
                            DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}';
                        return Container(color: Color(0xff0B1B2B),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Flutter India",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70,color: Colors.white),),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                CounterCellWidget(remainingDays: remainingDays,txt: "DAYS",),
                                CounterCellWidget(remainingDays: remainingHours,txt: "HOURS",),
                                 CounterCellWidget(remainingDays: remainingMin,txt: "MINUTES",),
                                  CounterCellWidget(remainingDays: remainingSec,txt: "SECONDS",),
                            
                                ]),
                            ],
                          ),);
                      }),
  );
  }
}

class CounterCellWidget extends StatelessWidget {
  const CounterCellWidget({
    Key key,
    @required this.remainingDays,
    @required this.txt,
  }) : super(key: key);

  final String remainingDays;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(remainingDays,style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),),
          Divider(),
          Text(txt,style: TextStyle(color: Colors.white,),)
        ],
      ),
    );
  }
}
