import 'package:flutter/material.dart';
import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/pages/chat_messages.dart';
import 'package:visan_portal/service/chat_service.dart';

class ChatTile extends StatelessWidget {
  final ChatChannel chatChannel;
  const ChatTile({Key?key, required this.chatChannel}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          child: Row(
            children: [
              Image.asset(chatChannel.image),
              const SizedBox(width: 10),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          child: Text(chatChannel.userName,
                              style: const TextStyle(
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 2, 52, 80),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start)),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          chatChannel.lastMessageText,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 117, 117, 117),
                              fontFamily: 'Open Sans',
                              fontSize: 14),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  )),
              const SizedBox(width: 5),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 15,
                    width: 30,
        
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (chatChannel.unRead != null)
                          ? const Color.fromARGB(255, 12, 168, 79)
                          : const Color.fromARGB(255, 252, 251, 251),
                    ),
        
                    //  margin: EdgeInsets.all(5),
                    child: Text(
                        (chatChannel.unRead != null)
                            ? ('${chatChannel.unRead}')
                            : '',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Text(chatChannel.dateString,
                        style: const TextStyle(
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
