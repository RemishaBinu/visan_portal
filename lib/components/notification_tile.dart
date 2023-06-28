import 'package:flutter/material.dart';
import 'package:visan_portal/model/notification.dart';
import 'package:visan_portal/pages/notifications2.dart';

class NotificationTile extends StatelessWidget {
  final NotificationForUser notification;
  const NotificationTile({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Image.asset(notification.profileImage)),
        const SizedBox(width: 5),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(notification.companyName,
                          style: const TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 18,
                              color: Color.fromARGB(255, 2, 52, 80),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Notify2()),
                    );
                  },
                ),
                Text(
                  notification.status,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 117, 117, 117),
                      fontFamily: 'Open Sans',
                      fontSize: 14),
                )
              ],
            )),
        const SizedBox(width: 5),
        Expanded(
            //  flex: 1,
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 12, 168, 79),
          ),

          //  margin: EdgeInsets.all(5),
          child: Text('${notification.noticationCount}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ))
      ],
    );
  }
}
