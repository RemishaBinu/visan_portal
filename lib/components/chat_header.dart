import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  String title;

  ChatHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: const Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
        InkWell(
          child: const Icon(
            Icons.more_vert,
          ),
          onTap: () {
            
          },
        ),
      ],
    );
  }
}
