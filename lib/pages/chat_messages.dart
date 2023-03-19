import 'package:flutter/material.dart';
import 'package:visan_portal/components/chat_header.dart';
import 'package:visan_portal/components/chat_message_row.dart';
import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/model/chat_message.dart';
import 'package:visan_portal/service/chat_service.dart';

class ChatMessages extends StatefulWidget{
  ChatChannel channel;
  ChatService chatService;
  ChatMessages({
    super.key,
    required this.channel,
    required this.chatService
  });

  @override
  State<StatefulWidget> createState() {
    return ChatMessagesState();
  }

}

class ChatMessagesState extends State<ChatMessages>{
  List<ChatMessage> messages = [];

  loadMessages(){
    setState(() {
      messages = widget.chatService.getMessagesByChannel(widget.channel);  
    });
  }

  @override
  void initState() {
    loadMessages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ChatHeader(title: widget.channel.peerUser.fullName),
          Container(
            padding: const EdgeInsets.all(16),
            child: ListView.builder( 
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
              return ChatMessageRow(message: messages[index]);
            })
          )
        ],
      ),
    );
  }

}