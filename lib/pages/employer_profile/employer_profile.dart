import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:visan_portal/components/box.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/file_upload.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:visan_portal/pages/employer_profile/company_details.dart';
import 'package:visan_portal/pages/profile_settings_edit.dart';
import 'package:visan_portal/pages/settings_job_seeker/settings.dart';

import '../settings_recruiter.dart';

class EmployerProfile extends StatelessWidget {
  const EmployerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(children: [
                Row(
                  children: [
                    Expanded(flex: 1, child: Header(text: 'Profile')),
                    InkWell(
                      child: Container(
                        child: const Icon(Icons.settings,
                            color: Color.fromARGB(255, 11, 88, 131)),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsRecruiter()),
                        );
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(16),
                        child: Image.asset('assets/images/ppic.png')),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vijayakumar R',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'vijaykumaar1907@gmail.com',
                            style: TextStyle(
                                color: Color.fromARGB(255, 130, 130, 130),
                                fontSize: 14),
                            textAlign: TextAlign.start,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileSettingsEdit()),
                                );
                              },
                              child: Text('Change Photo')),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Box(
                    title: 'Employer Profile',
                    hasColor: false,
                    icon: Icons.edit_outlined)),
            Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Box(
                    title: 'Contact Info',
                    hasColor: false,
                    icon: Icons.edit_outlined)),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Uploads',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                ),
                textAlign: TextAlign.start,
              ),
            ),
            InkWell(
              child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: DottedBorder(
                      color: Colors.black,
                      strokeWidth: 1,
                      child: FileUpload(
                          fileName:
                              'Company certifications, awards',
                          sIcon: Icons.edit_outlined))),
              onTap: () {},
            ),
            InkWell(
              child: Container(
                  padding: EdgeInsets.only(bottom: 30, top: 50),
                  child: CustomButton(text: 'Save')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompanyDetails()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
