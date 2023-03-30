import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:visan_portal/components/box.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/file_upload.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:visan_portal/pages/personal_details.dart';

class ProfileSettingsEdit extends StatelessWidget {
  const ProfileSettingsEdit({super.key});

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
                    Expanded(flex: 3, child: Header(text: 'Profile')),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.settings,
                          color: Color.fromARGB(255, 11, 88, 131)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(16),
                        child: Image.asset('assets/images/ppic.png')),
                    Expanded(
                      flex: 3,
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
                              onPressed: null, child: Text('Change Photo')),
                        ],
                      ),
                    ),
                    Expanded(flex: 1, child: Icon(Icons.edit_outlined))
                  ],
                ),
              ]),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Box(
                    title: 'Personal Information',
                    hasColor: false,
                    icon: Icons.add)),
            Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Box(
                    title: 'Contact Information',
                    hasColor: false,
                    icon: Icons.add)),
            Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 6),
                child: Text('Resume',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans'))),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: DottedBorder(
                  color: Colors.black,
                  strokeWidth: 1,
                  child: FileUpload(fileName: 'Visanport - Resume'),
                ),
              ),
              onTap: () {},
            ),
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
                              'Upload , certificates, portfolios \nor other documents'))),
              onTap: () {},
            ),
            Container(
                padding: EdgeInsets.only(bottom: 30, top: 50),
                child: CustomButton(
                  text: 'Save',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalDetails()),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
