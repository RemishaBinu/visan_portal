import 'package:flutter/material.dart';

class ChatFooter extends StatefulWidget {
  final Function(String message) onMessageSend;
  final TextEditingController editController = TextEditingController();
  ChatFooter({Key? key, required this.onMessageSend}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ChatFooterState();
  }
}

class ChatFooterState extends State<ChatFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Color.fromARGB(255, 220, 220, 220), width: 1))),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.emoji_emotions_rounded,
                  color: Colors.black45)),
          Expanded(
              child: SizedBox(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 220, 220, 220),
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: TextField(
                controller: widget.editController,
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
          )),
          Container(
              padding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 10, right: 10),
              child:
                  const Icon(Icons.attach_file_rounded, color: Colors.black45)),
          InkWell(
            child: Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                child: const Icon(Icons.send_rounded,
                    color: Color.fromARGB(255, 47, 142, 194))),
            onTap: () {
              String message = (widget.editController.value.text).trim();
              if (message.isEmpty) {
                return;
              }
              widget.onMessageSend(message);
            },
          ),
        ],
      ),
    );
  }
}
