import 'dart:async';

import 'package:flutter/material.dart';
import 'package:visan_portal/pages/settings_job_seeker/settings.dart';

import 'change_phone.dart';

class MailConfirmed extends StatefulWidget {
  const MailConfirmed({super.key});

  @override
  State<MailConfirmed> createState() => MailConfirmedState();
}

class MailConfirmedState extends State<MailConfirmed> {

   @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Settings())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/acc.png'),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Your Email has been Changed',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ]),
      ),
    );
  }
}
