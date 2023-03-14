import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:visan_portal/components/header_component.dart';

class JobSelection extends StatelessWidget {
  const JobSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
           padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(
            children: [
              Header(text: 'Select job by Name',
              )
            ],
          ),
        ),
      ),
    );
  }
}