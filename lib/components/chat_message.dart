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
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: message.isCurrentUser ? Colors.blue.shade50 : Colors.black12,
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: Text(message.message),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(message.sentOn),
          )
        ],
      ),
    );
  }

}