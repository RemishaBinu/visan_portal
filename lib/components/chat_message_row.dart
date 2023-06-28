import 'package:flutter/material.dart';
import 'package:visan_portal/components/chat_message.dart';
import 'package:visan_portal/model/chat_message.dart';

class ChatMessageRow extends StatelessWidget {
  final ChatMessage message;
  const ChatMessageRow({Key? key, required this.message}) : super(key: key);

  Widget getChatRow() {
    return ChatMessageComponent(message: message);
  }

  @override
  Widget build(BuildContext context) {
    return getChatRow();
  }
}
