import 'dart:async';

import 'package:flutter/material.dart';

import '../settings_recruiter.dart';
import 'settings.dart';

class PhoneConfirmed extends StatefulWidget {
  const PhoneConfirmed({super.key});

  @override
  State<PhoneConfirmed> createState() => PhoneConfirmedState();
}

class PhoneConfirmedState extends State<PhoneConfirmed> {
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
                  'Your Phone number has been Changed',
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
