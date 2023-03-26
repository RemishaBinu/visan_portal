import 'package:flutter/material.dart';
import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/pages/chat.dart';
import 'package:visan_portal/pages/chat_messages.dart';
import 'package:visan_portal/pages/contact_info.dart';
import 'package:visan_portal/pages/home_recruiter.dart';
import 'package:visan_portal/pages/login.dart';
import 'package:visan_portal/pages/notifications.dart';
import 'package:visan_portal/pages/notifications2.dart';
import 'package:visan_portal/pages/saved.dart';
import 'package:visan_portal/service/chat_channel_service.dart';
import 'package:visan_portal/service/chat_service.dart';
import 'package:visan_portal/service/notification_service.dart';
import 'package:visan_portal/service/recruiter_service.dart';
import 'package:visan_portal/service/saved_proposal_service.dart';

void main() {
  runApp(MyApp(notificationService: NotificationService.instance));
}

class MyApp extends StatelessWidget {
  NotificationService notificationService;
  
   MyApp({super.key, required this.notificationService});

  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
     // home:  Scaffold(body: ChatMessages(channel: ChatChannel.Default(), chatService: ChatService.getInstance())),
    // home: HomeRecruiter(recruiterService: RecruiterService.instance)
    //home:Chats(chatChannelService: ChatChannelService.instance)
    home: Saved(savedProposalService: SavedProposalService.instance),
    );
  }
}





 //CustomTextField(label: "Email address", required: true,),
 //           CustomTextField(label: "Place"),
 //           CustomButton(text: "Submit")
