import 'package:flutter/material.dart';
import 'package:visan_portal/components/notification_tile.dart';
import 'package:visan_portal/model/notification.dart';
import 'package:visan_portal/service/notification_service.dart';

class Notify extends StatefulWidget {
  NotificationService notificationService;
  Notify({super.key, required this.notificationService});

  @override
  State<Notify> createState() => NotifyState();
}

class NotifyState extends State<Notify> {
  late List<NotificationForUser> notification;
  @override
  void initState() {
    List<NotificationForUser> notificationFromService =
        widget.notificationService.getNotification();
    setState(() {
      notification = notificationFromService;
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
                      'Notifications',
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
            ListView.builder(
                scrollDirection: Axis.vertical,
                
                shrinkWrap: true,
                itemCount: this.notification.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child:
                          NotificationTile(notification: notification[index]));
                }),
          ]),
        ),
      ),
    );
    ;
  }
}
