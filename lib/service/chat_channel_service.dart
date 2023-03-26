import 'package:visan_portal/model/chat_channel.dart';

class ChatChannelService {
  static ChatChannelService instance = ChatChannelService();
  static getInstance() {
    return instance;
  }

  List<ChatChannel> getChatDetails() {
    List<ChatChannel> chatDetails = [
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Payment still pending status for Tesl...',
          unRead: 21,
          dateString: 'Yesterday',
          userName: 'Elon Musk'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          unRead: 21,
          dateString: '10:20 pm',
          userName: 'Peter Park'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          dateString: 'May 20',
          userName: 'Peter Park'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          dateString: 'May 20',
          userName: 'Peter Park'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          unRead: 21,
          dateString: '10:20 pm',
          userName: 'Peter Park'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          dateString: 'May 20',
          userName: 'Peter Park'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          dateString: 'May 20',
          userName: 'Peter Park'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Payment still pending status for Tesl...',
          unRead: 21,
          dateString: 'Yesterday',
          userName: 'Elon Musk'),
      ChatChannel(
          image: 'assets/images/img.png',
          lastMessageText: 'Thank you for the cash',
          unRead: 21,
          dateString: '10:20 pm',
          userName: 'Peter Park'),
    ];
    return chatDetails;
  }
}
