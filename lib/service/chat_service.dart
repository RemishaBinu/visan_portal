import 'package:visan_portal/model/chat_channel.dart';
import 'package:visan_portal/model/chat_message.dart';
import 'package:visan_portal/model/user.dart';

class ChatService{

  static ChatService _instance = ChatService();

  static ChatService getInstance(){
    return _instance;
  }

  List<ChatMessage> getMessagesByChannel(ChatChannel channel){
    User me = User(id: 1, fullName: "you", profileImage: "");
    User peer = User(id: 2, fullName: "Elon musk", profileImage: "");
    return [
      ChatMessage(id: 1, message: "You have been selected", sentOn: "02:40 pm", sender: peer, isCurrentUser: false),
      ChatMessage(id: 2, message: "Okey", sentOn: "02:40 pm", sender: peer, isCurrentUser: false),
      ChatMessage(id: 3, message: "Sure Elon I will submit my resume now", sentOn: "02:40 pm", sender: me, isCurrentUser: true),
      ChatMessage(id: 4, message: "Done", sentOn: "02:40 pm", sender: me, isCurrentUser: true),
      ChatMessage(id: 5, message: "You have been selected", sentOn: "02:40 pm", sender: peer, isCurrentUser: false),
      ChatMessage(id: 6, message: "Okey", sentOn: "02:40 pm", sender: peer, isCurrentUser: false),
      ChatMessage(id: 7, message: "Sure Elon I will submit my resume now", sentOn: "02:40 pm", sender: me, isCurrentUser: true),
      ChatMessage(id: 8, message: "Done", sentOn: "02:40 pm", sender: me, isCurrentUser: true),
    ];
  }

 
}