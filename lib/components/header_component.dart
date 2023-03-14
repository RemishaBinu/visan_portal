import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Header extends StatelessWidget {
  String text;
  Header({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(child: Icon(Icons.arrow_back_ios,
        ),
        onTap: () {
          Navigator.pop(context);
        },),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(text,
           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
        )
      ],
    );
  }
}