import 'dart:async';

import 'package:flutter/material.dart';
import 'package:visan_portal/service/job_service.dart';

import 'job_search.dart';

class AccountVerified extends StatefulWidget {
  const AccountVerified({Key? key}) : super(key: key);

  @override
  State<AccountVerified> createState() => AccountVerifiedState();
}

class AccountVerifiedState extends State<AccountVerified> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    JobSearch(jobService: JobService.instance))));
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
                  'Your account has been verified',
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
