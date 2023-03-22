import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/radio_row.dart';


class AccountTypeModal extends StatefulWidget {
  const AccountTypeModal({super.key});

  @override
  State<AccountTypeModal> createState() => AccountTypeModalState();
}

class AccountTypeModalState extends State<AccountTypeModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Account Type'),
        content: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: const Text('Choose type of your account based \non your needs',
                style: TextStyle(color: Color.fromARGB(255, 130,130,130))),
              ),
              Expanded(
                flex: 1,
                child: RadioRow()),
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
                  child: const Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 130,130,130))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
               Expanded(
          flex: 1,
          child: CustomButton(text: 'Save',
          onPressed: () {
                    Navigator.of(context).pop();
                  }),
          )
            ],
          ),
        
        ],
      );
  }
}