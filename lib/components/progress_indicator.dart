import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressIndication extends StatelessWidget {
  final String text;
  final double percent;
  const ProgressIndication(
      {Key? key, required this.text, required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 30.0,
      lineWidth: 6.0,
      percent: percent,
      center: Text(
        text,
        style: const TextStyle(
            color: Color.fromARGB(255, 47, 142, 194),
            fontWeight: FontWeight.bold),
      ),
      progressColor: const Color.fromARGB(255, 47, 142, 194),
    );
  }
}
