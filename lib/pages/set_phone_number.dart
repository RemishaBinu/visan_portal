import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'forgot_password.dart';

class SetPhone extends StatelessWidget {
  const SetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: Center(
            child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(
                label: 'Enter your phone number',
                required: false,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: CustomButton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()),
                      );
                    },
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
