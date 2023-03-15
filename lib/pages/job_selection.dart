import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:visan_portal/components/text_tag.dart';
import 'package:visan_portal/pages/application.dart';
import 'package:visan_portal/pages/recent_jobs.dart';

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
              ),
              TextTag(),
              Container(
                padding: EdgeInsets.only(top:20, bottom: 20),
               width: double.infinity,
               alignment: Alignment.centerLeft,
              child: Wrap(
                direction: Axis.vertical,
              spacing: 20,
            
                children: [
                  Text('Web Design',
                  textAlign:TextAlign.start,
                  style: TextStyle(color: Color.fromARGB(255, 117,117,117)),),
                   Text('App design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
              Text('Web Design',
              textAlign:TextAlign.start,
              style: TextStyle(color: Color.fromARGB(255, 117,117,117))),
                ],
              )),
             

              CustomButton(text: 'Submit',
              onPressed:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RecentJobs()),
                            );
                          },)
            ],
          ),
        ),
      ),
    );
  }
}