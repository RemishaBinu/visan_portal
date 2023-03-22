import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/modals/account_type_modal.dart';
import 'package:visan_portal/modals/email_modal.dart';

import '../../components/header_component.dart';
import '../../components/radio_row.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            children: [
              Header(
                text: 'Settings',
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.vertical,
                    spacing: 30,
                    children: [
                      InkWell(
                        child: Text(
                          'Account Type',
                          textAlign: TextAlign.start,
                          style:
                              TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
                        ),
                        onTap: () => _dialogBuilder(context),
                      ),
                      InkWell(
                        child: Text('Email',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromARGB(255, 66, 66, 66))),
                                onTap: () {
                showModalBottomSheet(context: context,
                  builder: (context){
                    return EmailModal();
                  }
                );
              },
                      ),
                      Text('Change Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                      Text('Change Phone Number',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                      Text('Close my Account',
                          textAlign: TextAlign.start,
                          style:
                              TextStyle(color: Color.fromARGB(255, 66, 66, 66)))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Account Type'),
        content: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: const Text(
                    'Choose type of your account based \non your needs',
                    style:
                        TextStyle(color: Color.fromARGB(255, 130, 130, 130))),
              ),
              Expanded(flex: 1, child: RadioRow()),
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Cancel',
                      style:
                          TextStyle(color: Color.fromARGB(255, 130, 130, 130))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: CustomButton(
                    text: 'Save',
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              )
            ],
          ),
        ],
      );
    },
  );
}
