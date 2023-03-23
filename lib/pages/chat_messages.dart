import 'dart:async';

import 'package:flutter/material.dart';
import 'package:visan_portal/components/chat_footer_component.dart';
import 'package:visan_portal/components/chat_header.dart';
import 'package:visan_portal/components/chat_message_row.dart';
import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/model/chat_message.dart';
import 'package:visan_portal/model/user.dart';
import 'package:visan_portal/service/chat_service.dart';

class ChatMessages extends StatefulWidget{
  ChatChannel channel;
  ChatService chatService;
  ScrollController scrollController = ScrollController();
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

  sendMessage(String message){
    setState(() {
      messages.addAll([
        ChatMessage(
          id: 0, message: message, sentOn: '02:40 pm', sender: User.Default(), isCurrentUser: true
        )
      ]);
    });
    widget.scrollController.animateTo(
      widget.scrollController.offset + widget.scrollController.position.viewportDimension,
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
    mimicReply();
  }

  mimicReply(){
    Timer(const Duration(seconds: 2), () { 
      setState(() {
        messages.addAll([
          ChatMessage(
            id: 0, message: "Ok", sentOn: '02:40 pm', sender: User.Default(), isCurrentUser: false
          )
        ]);
      });
      widget.scrollController.animateTo(
        widget.scrollController.offset + widget.scrollController.position.viewportDimension,
        duration: const Duration(milliseconds: 300), 
        curve: Curves.easeOut
      );
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ChatHeader(title: widget.channel.peerUser.fullName),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: ListView.builder( 
                scrollDirection: Axis.vertical,
                controller: widget.scrollController,
                shrinkWrap: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                return ChatMessageRow(message: messages[index]);
              })
            ),
          ),
          ChatFooter(onMessageSend: (String message) {
            // Send this message via service call
            sendMessage(message);
          },)
        ],
      ),
    );
  }

}