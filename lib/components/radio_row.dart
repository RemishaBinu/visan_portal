import 'package:flutter/material.dart';

class RadioRow extends StatefulWidget {
  const RadioRow({Key? key}) : super(key: key);

  @override
  State<RadioRow> createState() => RadioRowState();
}

enum JobType { partTime, fullTime }

class RadioRowState extends State<RadioRow> {
  JobType? _character = JobType.partTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: ListTile(
            title: const Text('Part time',
                style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    color: Color.fromARGB(255, 130, 130, 130))),
            leading: Radio<JobType>(
              value: JobType.partTime,
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
            title: const Text('Full time',
                style: TextStyle(
                    fontFamily: 'Open Sans',
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
