import 'package:flutter/material.dart';
import 'package:visan_portal/components/chat_message.dart';
import 'package:visan_portal/model/chat_message.dart';

class ChatMessageRow extends StatelessWidget {
  ChatMessage message;
  ChatMessageRow({
    super.key,
    required this.message
  });

  Widget getChatRow(){
    return Container(
        alignment: message.isCurrentUser ? Alignment.centerRight: Alignment.centerLeft,
        child: ChatMessageComponent(message: message),
      );
  }

  @override
  Widget build(BuildContext context) {
    return getChatRow();
  }

}