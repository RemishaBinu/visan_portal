import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  final String title;

  const ChatHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 220, 220, 220), width: 1))),
      child: Row(
        children: [
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          InkWell(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Icon(
                Icons.more_vert,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
