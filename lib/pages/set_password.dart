import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'package:visan_portal/pages/account._verified.dart';
import 'package:visan_portal/pages/forgot_password.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

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
                  'Set new password',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(
                label: 'New Password',
                required: false,
              ),
              CustomTextField(label: 'Confirm Password'),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: CustomButton(text: 'Set password', onPressed: () {
                     Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPassword()),
                            );
                  },)),
            ],
          ),
        )),
      ),
    );
  }
}
