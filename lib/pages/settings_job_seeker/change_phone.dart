import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:visan_portal/pages/settings_job_seeker/phone_confirmed.dart';

class ChangePhone extends StatelessWidget {
  const ChangePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              Header(text: 'Change phone Number'),
              SizedBox(height: 20),
              CustomTextField(label: 'Phone Number'),
              SizedBox(height: 10),
              CustomTextField(label: 'Password'),
              
              Container(
                padding: EdgeInsets.only(top:30, left: 10, right: 10),
                child: CustomButton(text: 'Change',
                onPressed: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhoneConfirmed()),
                      );
                },))
            ],
          )),
      ),
    );
  }
}