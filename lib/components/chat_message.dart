import 'package:flutter/material.dart';
import 'package:visan_portal/model/chat_message.dart';

class ChatMessageComponent extends StatelessWidget{
  ChatMessage message;

  ChatMessageComponent({
    super.key,
    required this.message
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: message.isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: message.isCurrentUser ? const Color.fromARGB(255, 193, 233, 255) : const Color.fromARGB(255, 220, 220, 220),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(message.message),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(message.sentOn, style: const TextStyle(color: Color.fromARGB(255, 188, 188, 188)),),
          )
        ],
      ),
    );
  }

}