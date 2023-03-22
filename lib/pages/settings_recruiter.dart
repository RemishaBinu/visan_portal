import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:visan_portal/components/text_tag.dart';
import 'package:visan_portal/pages/application.dart';
import 'package:visan_portal/pages/recent_jobs.dart';
import 'package:visan_portal/pages/settings_job_seeker/account_settings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
                      Text(
                        'My jobs',
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
                      ),
                      Text('Find jobs',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                      InkWell(
                        child: Text('Account Settings',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Color.fromARGB(255, 66, 66, 66))),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AccountSettings()),
                          );
                        },
                      ),
                      Text('About',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                      Text('Privacy policy',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                      Text('Help',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                      Text('Sign out',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66))),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
