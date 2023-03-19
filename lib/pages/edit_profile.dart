import 'package:flutter/material.dart';
import 'package:visan_portal/components/box.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/image_picker.dart';
import 'package:visan_portal/pages/view_profile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: Center(
          child: Column(children: [
            Text('Edit Profile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            ImagePickerWidget(),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Box(title: 'Personal Details', icon: Icons.add, hasColor: false,)),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Box(title: 'Education', hasColor: false,)),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Box(title: 'Experience', icon: Icons.check, hasColor: false,)),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Box(title: 'Skills', icon: Icons.add, hasColor: false,)),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Box(title: 'Resume', icon: Icons.add, hasColor: false,)),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Box(title: 'Work Samples / Portfolio', icon: Icons.add, hasColor: false,)),
            Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 30),
                child: CustomButton(text: 'Submit',
                onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ViewProfile()),
                            );
                          },))
          ]),
        ),
      ),
    );
  }
}
