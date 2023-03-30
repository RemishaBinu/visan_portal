import 'dart:async';
import 'package:flutter/material.dart';

import 'edit_profile.dart';

class ApplicationSubmission extends StatefulWidget {
  const ApplicationSubmission({super.key});

  @override
  State<ApplicationSubmission> createState() => ApplicationSubmissionState();
}

class ApplicationSubmissionState extends State<ApplicationSubmission> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const EditProfile())));
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
                  'Your Application has been Submitted',
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
