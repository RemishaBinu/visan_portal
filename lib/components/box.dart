import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  String title;
  IconData? icon;
  bool hasColor;
  Box({super.key, required this.title, this.icon, required this.hasColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 189, 189, 189)),
      ),
      child: Row(
        children: [Expanded(
          flex: 4,
          child: Text(title,
          style: TextStyle(fontSize: 16,
          fontFamily: 'Open Sans',
          color: hasColor!?Color.fromARGB(255, 11, 88, 131):Colors.black),
          textAlign: TextAlign.left)), Expanded(
            flex: 1,
            child: Icon(icon,
            color: Color.fromARGB(255, 11, 88, 131)))],
      ),
    );
  }
}
