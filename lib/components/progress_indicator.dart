import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressIndication extends StatelessWidget {
  String text;
  double percent;
  ProgressIndication({super.key, required this.text, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircularPercentIndicator(
      radius: 30.0,
      lineWidth: 6.0,
      percent: percent,
      center: Text(text,
      style: TextStyle(color: Color.fromARGB(255, 47, 142, 194),
      fontWeight: FontWeight.bold),),
      progressColor: Color.fromARGB(255, 47, 142, 194),
    ));
  }
}
