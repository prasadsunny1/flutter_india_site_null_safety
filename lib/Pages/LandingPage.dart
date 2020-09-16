import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
Timer _timer;
int _start = 10;
class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _counter = 0;
  int estimateTs = DateTime(2020, 9, 20, 6, 15, 30)
      .millisecondsSinceEpoch; // set needed date

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
    return StreamBuilder(
          stream: Stream.periodic(Duration(seconds: 1), (i) => i),
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            DateFormat formatMin = DateFormat("mm");
            DateFormat formatSec = DateFormat("ss");
            int now = DateTime.now().millisecondsSinceEpoch;
            Duration remaining = Duration(milliseconds: estimateTs - now);
            var remainingDays =
                '${(remaining.inDays < 10) ? "0" : ""}${remaining.inDays}';
            var remainingHours =
                '${((remaining.inHours - (remaining.inDays * 24)) < 10) ? "0" : ""}${remaining.inHours - (remaining.inDays * 24)}';

            var remainingMin =
                '${formatMin.format(DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}';
            var remainingSec =
                '${formatSec.format(DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}';
            var size = MediaQuery.of(context).size;
            return Container(
              height: size.height,
              width: size.width,
              color: Color(0xff0B1B2B),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Flutter India",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CounterCellWidget(
                          remainingDays: remainingDays,
                          txt: "DAYS",
                        ),
                        CounterCellWidget(
                          remainingDays: remainingHours,
                          txt: "HOURS",
                        ),
                        CounterCellWidget(
                          remainingDays: remainingMin,
                          txt: "MINUTES",
                        ),
                        CounterCellWidget(
                          remainingDays: remainingSec,
                          txt: "SECONDS",
                        ),
                      ]),
                ],
              ),
            );
          });
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
          Text(
            remainingDays,
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text(
            txt,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}