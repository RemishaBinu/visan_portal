import 'package:visan_portal/model/user.dart';

class ChatMessage {
  int id;
  String message;
  String sentOn;
  User sender;
  bool isCurrentUser;

  ChatMessage({
    required this.id,
    required this.message,
    required this.sentOn,
    required this.sender,
    required this.isCurrentUser
  });
}