import 'package:visan_portal/model/notification.dart';

class NotificationService {
  static NotificationService instance = NotificationService();
  static getInstance(){
    return instance;
  }
  List<NotificationForUser> getNotification() {
    List<NotificationForUser> notify = [
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Soft Solutions',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 1),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Soft Solutions',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 1),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Soft Solutions',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 1),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Soft Solutions',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 1),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2),
      NotificationForUser(
          profileImage: 'assets/images/img.png',
          companyName: 'Micro Software',
          status: 'Payment still pending status for Tesl...',
          noticationCount: 2)
    ];
    return notify;
  }
}
