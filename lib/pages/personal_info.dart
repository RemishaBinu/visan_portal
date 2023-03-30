import 'package:flutter/material.dart';
import 'package:visan_portal/components/progress_indicator.dart';
import 'package:visan_portal/pages/educational_details.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ProgressIndication(
                      text: '1 OF 7',
                      percent: .14,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Personal Information',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.of(context).pop();
                        }))
              ],
            ),
            CustomTextField(label: 'First name', required: true),
            CustomTextField(label: 'Last name', required: true),
            CustomTextField(label: 'Headline'),
            CustomTextField(label: 'Current City', required: true),
            Row(
              children: [
                Text('Phone Number',
                    style:
                        const TextStyle(fontSize: 16, fontFamily: 'Open Sans')),
                Text(
                  "*",
                  style: TextStyle(color: Color.fromARGB(255, 235, 87, 87)),
                )
              ],
            ),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(right: 3.0),
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 189, 189, 189)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Image.asset('assets/images/us.png'),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '(+91) 415 5552671',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 160, 160, 160)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              width: 1.0, color: Colors.black54)),
                    ),
                  ))
            ]),
            CustomTextField(
                label: 'Highest Career level',
                hint: 'Select',
                sIcon: Icons.keyboard_arrow_down),
            CustomTextField(
                label: 'Years of Experience',
                hint: 'Select',
                sIcon: Icons.keyboard_arrow_down),
            CustomTextField(label: 'Social media', hint: 'URL'),
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
                                foregroundColor: Color.fromARGB(255, 0, 0, 0),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 11, 88, 131),
                                    width: 1),
                                minimumSize: Size(90, 45)),
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })),
                    SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: CustomButton(
                          text: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EducationDetails()),
                            );
                          },
                        ))
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
