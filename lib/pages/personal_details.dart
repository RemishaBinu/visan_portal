import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:visan_portal/pages/personal_info.dart';

class PersonelDetails extends StatelessWidget {
  const PersonelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
            child: Column(
              children: [
                Header(
                  text: 'Personal Details',
                ),
                CustomTextField(label: 'First name', required: true),
                CustomTextField(label: 'Last name', required: true),
                CustomTextField(label: 'Headline'),
                CustomTextField(
                    label: 'Description', maxLength: 500, maxLines: 8),
                CustomTextField(label: 'Current City', required: true),
                CustomTextField(label: 'Phone number', required: true),
                CustomTextField(label: 'Secondary City'),
                CustomTextField(
                    label: 'Date of Birth',
                    required: true,
                    hint: 'dd/mm/yy',
                    sIcon: Icons.calendar_month_outlined),
                CustomTextField(
                    label: 'Industry',
                    hint: 'e.g., Data Scientist',
                    sIcon: Icons.keyboard_arrow_down_outlined),
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  height: 80,
                  child: DottedBorder(
                    color: Color.fromARGB(255, 117, 117, 117),
                    strokeWidth: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Icon(Icons.image_outlined,
                                  color: Color.fromARGB(255, 11, 88, 131))),
                          Expanded(
                              flex: 3,
                              child: Text(
                                'Upload your photo',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Open Sans',
                                    color: Color.fromARGB(255, 66, 66, 66)),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  height: 80,
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    foregroundColor:
                                        Color.fromARGB(255, 0, 0, 0),
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 11, 88, 131),
                                        width: 1),
                                    minimumSize: Size(90, 45)),
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 117, 117, 117)),
                                ),
                                onPressed: null)),
                        SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child: CustomButton(
                              text: 'Next',
                              onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PersonalInfo()),
                            );
                          },
                            ))
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
