import 'package:visan_portal/model/user.dart';

class ChatChannel {
  String image;
  String lastMessageText;
  int? unRead;
  String dateString;
  User? peerUser;
  String userName;

  ChatChannel(
      {required this.image,
      required this.lastMessageText,
      this.unRead,
      required this.dateString,
      this.peerUser,
      required this.userName});


  factory ChatChannel.Default(){
    return ChatChannel(
      image: '',
      lastMessageText: "Payment still pending for Tesla m",
      unRead: 21,
      dateString: "May 20",
      peerUser: User.Default(), 
      userName: '');
  }
}