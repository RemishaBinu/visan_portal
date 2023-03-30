import 'package:flutter/material.dart';
import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/pages/chat_messages.dart';
import 'package:visan_portal/service/chat_service.dart';

class ChatTile extends StatelessWidget {
  ChatChannel chatChannel;
  ChatTile({super.key, required this.chatChannel});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: InkWell(
          child: Row(
            children: [
              Container(
                  //  padding: EdgeInsets.only(top: 20),
                  child: Container(child: Image.asset(chatChannel.image))),
              SizedBox(width: 10),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.infinity,
                          child: Text(chatChannel.userName,
                              style: TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 2, 52, 80),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start)),
                      Container(
                        width: double.infinity,
                        child: Text(
                          chatChannel.lastMessageText,
                          style: TextStyle(
                              color: Color.fromARGB(255, 117, 117, 117),
                              fontFamily: 'Open Sans',
                              fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  )),
              SizedBox(width: 5),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 15,
                    width: 30,
        
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (chatChannel.unRead != null)
                          ? Color.fromARGB(255, 12, 168, 79)
                          : Color.fromARGB(255, 252, 251, 251),
                    ),
        
                    //  margin: EdgeInsets.all(5),
                    child: Text(
                        (chatChannel.unRead != null)
                            ? ('${chatChannel.unRead}')
                            : '',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(chatChannel.dateString,
                        style: TextStyle(
                            color: Color.fromARGB(255, 117, 117, 117),
                            fontSize: 12)),
                  )
                ],
              ))
            ],
          ),
          onTap: (){
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatMessages(
                          channel: ChatChannel.Default(),
                          chatService: ChatService.getInstance(),
                        )),
                      );
          },
        )
        );
  }
}
