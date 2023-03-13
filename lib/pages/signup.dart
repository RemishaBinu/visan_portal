import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'package:visan_portal/pages/signin.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                  'Hello, there !!',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 117, 117, 117)),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Create a new account',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(
                  label: 'Email address',
                  required: false,
                  hint: 'Vijay@gmail.com'),
              CustomTextField(label: 'Username'),
              CustomTextField(label: 'Phone Number'),
              CustomTextField(label: 'Password'),
              CustomTextField(label: 'Confirm Password'),
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: CustomButton(text: 'Sign Up')),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    'Already a user?',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 79, 79, 79)),
                  ),
                  InkWell(
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(
                            255,
                            47,
                            142,
                            194,
                          )),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                  )
                ]),
              )
            ],
          ),
        )),
      ),
    );
  }
}
