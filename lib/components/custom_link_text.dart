import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomLinkText extends StatelessWidget {
  String text;
  final VoidCallback onPressed;
  CustomLinkText({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:
              TextStyle(color: Color.fromARGB(255, 11, 88, 131), fontSize: 12),
        ));
  }
}
