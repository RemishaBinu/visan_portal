import 'package:visan_portal/model/user.dart';

class ChatChannel{
  int id;
  String lastMessageText;
  int unRead;
  String dateString;
  User peerUser;

  ChatChannel({
    required this.id,
    required this.lastMessageText,
    required this.unRead,
    required this.dateString,
    required this.peerUser
  });

  factory ChatChannel.Default(){
    return ChatChannel(
      id: 0,
      lastMessageText: "Payment still pending for Tesla m",
      unRead: 21,
      dateString: "May 20",
      peerUser: User.Default());
  }
}