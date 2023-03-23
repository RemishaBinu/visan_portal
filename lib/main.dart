import 'package:flutter/material.dart';
import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/pages/chat_messages.dart';
import 'package:visan_portal/pages/login.dart';
import 'package:visan_portal/service/chat_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(body: ChatMessages(channel: ChatChannel.Default(), chatService: ChatService.getInstance())),
    );
  }
}





 //CustomTextField(label: "Email address", required: true,),
 //           CustomTextField(label: "Place"),
 //           CustomButton(text: "Submit")
