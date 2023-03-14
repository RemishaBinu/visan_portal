import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_link_text.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'package:visan_portal/pages/job_search.dart';
import 'package:visan_portal/pages/set_password.dart';
import 'package:visan_portal/pages/set_phone_number.dart';
import 'package:visan_portal/pages/signup.dart';
import 'package:visan_portal/service/job_service.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35, left: 15, right: 15),
        child: Center(
            child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back,',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 117, 117, 117)),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sign In to Continue',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(
                  label: 'Email address',
                  required: false,
                  hint: 'Vijay@gmail.com'),
              CustomTextField(label: 'Password'),
              Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: CustomLinkText(text: 'Forgot password?', onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SetPhone()),
                            );
                  },)),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: CustomButton(text: 'Submit', onPressed: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => JobSearch(jobService: JobService())),
                            );
                },)),
              Container(
                padding: EdgeInsets.only(top: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'New user?',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 79, 79, 79)),
                  ),
                  InkWell(
                    child: Text(
                      'Sign Up',
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
                              MaterialPageRoute(builder: (context) => SignUp()),
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
