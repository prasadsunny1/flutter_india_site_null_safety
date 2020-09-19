import 'package:flutter/material.dart';

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
