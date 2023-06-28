import 'package:flutter/material.dart';

import '../model/job.dart';

class JobCategory extends StatelessWidget {
  final Job jobs;

  const JobCategory({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 47, 142, 194)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Icon(
          jobs.icon,
          color: const Color.fromARGB(255, 47, 142, 194),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            jobs.job,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
          ),
        )
      ]),
    );
  }
}
