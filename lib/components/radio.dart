import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => RadioButtonState();
}
enum JobType { partTime,fullTime }

class RadioButtonState extends State<RadioButton> {
  JobType? _character = JobType.partTime;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: ListTile(
            title: const Text('Part time',style: TextStyle(fontFamily: 'Open Sans',
            fontSize: 16,
            color: Color.fromARGB(255, 130, 130, 130))),
            leading: Radio<JobType>(
              value:JobType.partTime,
              groupValue: _character,
              onChanged: (JobType? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ListTile(
            title: const Text('Full time',style: TextStyle(fontFamily: 'Open Sans',
            fontSize: 16,
            color: Color.fromARGB(255, 130, 130, 130))),
            leading: Radio<JobType>(
              value: JobType.fullTime,
              groupValue: _character,
              onChanged: (JobType? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}