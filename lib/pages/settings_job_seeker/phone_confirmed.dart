import 'package:flutter/material.dart';

class PhoneConfirmed extends StatelessWidget {
  const PhoneConfirmed({super.key});

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
