import 'package:flutter/material.dart';
import 'package:visan_portal/components/box.dart';
import 'package:visan_portal/pages/edit_profile.dart';
import 'package:visan_portal/pages/profile_settings.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
            child: Column(children: [
              Image.asset('assets/images/ppic.png'),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text('vijaykumaar1907@gmail.com',
                style: TextStyle(color: Color.fromARGB(255, 130, 130, 130)),)),
              Container(
            margin: EdgeInsets.only(top: 10),
            child: TextButton(
                onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileSettings()),
                            );
                          }, child: Text('Edit Profile')),
          ),
           Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Personal Details',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Vijayakumar R\nIndia\nCoimbatore,Tamilnadu',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Education',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Master of Engineering',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Paavai Engineering College, Namakkal',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontSize: 12,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Experience',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Application Designer',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Ideal Village, Pune',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontSize: 12,
                    fontFamily: 'Open Sans'),
              ),
            ),

            Container(
              width: double.infinity,
              child: Text(
                'Software Developer',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Krash IT Services, Uttar Pradesh',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontSize: 12,
                    fontFamily: 'Open Sans'),
              ),
            ),
             Container(
              width: double.infinity,
              child: Text(
                'Senior Architect',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
             Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 30, bottom: 5),
              child: Text(
                'Skills',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Figma\nUI/UX\nAndroid\nJava\nPython\nApp Development',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'Resume',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Box(title: 'Resume.pdf', hasColor: true
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'Work Samples',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
             Box(title: 'Design.pdf', hasColor: true
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50),
              child: Box(title: 'Development.pdf', hasColor: true
              ),
            )
            ]),
          ),
        ),
      ),
    );
  }
}