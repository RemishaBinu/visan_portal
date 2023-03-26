import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visan_portal/components/chat_tile.dart';
import 'package:visan_portal/model/chat_channel.dart';
import '../service/chat_channel_service.dart';

class Chats extends StatefulWidget {
  ChatChannelService chatChannelService;
  Chats({super.key, required this.chatChannelService});

  @override
  State<Chats> createState() => ChatsState();
}

class ChatsState extends State<Chats> {
  late List<ChatChannel> chatChannel;
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    List<ChatChannel> chatFromService =
        widget.chatChannelService.getChatDetails();
    setState(() {
      chatChannel = chatFromService;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Column(children: [
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 189, 189, 189),
                          width: 1))),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Icon(Icons.arrow_back_ios),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 52, 80),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(flex: 1, child: Icon(Icons.settings)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: CupertinoSearchTextField(
                controller: controller,
                onChanged: (value) {},
                onSubmitted: (value) {},
                autocorrect: true,
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: this.chatChannel.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: ChatTile(chatChannel: chatChannel[index]));
                }),
          ]),
        ),
      ),
    );
    ;
  }
}
