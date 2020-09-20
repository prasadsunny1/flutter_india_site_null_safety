import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_india_sep/widgets/counter_cell_widget.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    Key key,
  }) : super(key: key);

  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1), (i) => i),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        DateTime eventDate = DateTime(2020, 10, 3, 20, 30, 00);
        Duration remaining = DateTime.now().difference(eventDate);
        String remainingDays = remaining.inDays.abs().toString();
        String remainingHours =
            (remaining.inHours - (remaining.inDays * 24)).abs().toString();
        String remainingMin =
            (remaining.inMinutes - (remaining.inHours * 60)).abs().toString();
        String remainingSec =
            (remaining.inSeconds - (remaining.inMinutes * 60)).abs().toString();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CounterCellWidget(
              remainingDays: remainingDays,
              txt: "DAYS",
            ),
            CounterCellWidget(
              remainingDays: numberCorrection(time: remainingDays),
              txt: "HOURS",
            ),
            CounterCellWidget(
              remainingDays: numberCorrection(time: remainingMin),
              txt: "MINUTES",
            ),
            CounterCellWidget(
              remainingDays: numberCorrection(time: remainingSec),
              txt: "SECONDS",
            ),
          ],
        );
      },
    );
  }
}
String numberCorrection({String time}){
  return (num.parse(time)<10)?"0"+time:time;
}