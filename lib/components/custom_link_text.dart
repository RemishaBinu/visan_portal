import 'package:flutter/material.dart';

class CustomLinkText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomLinkText({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 11, 88, 131), fontSize: 12),
        ));
  }
}
