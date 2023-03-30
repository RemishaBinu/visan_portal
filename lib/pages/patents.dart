import 'package:flutter/material.dart';
import 'package:visan_portal/pages/awards.dart';
import 'package:visan_portal/pages/required_skills.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../components/progress_indicator.dart';

class Patents extends StatelessWidget {
  const Patents({super.key});

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
                      text: '6 OF 7',
                      percent: .85,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Patents',
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
                        })),
              ],
            ),
            SizedBox(height: 10),
            CustomTextField(label: 'Title', required: true),
            CustomTextField(label: 'URL'),
            CustomTextField(label: 'Patent number', required: true),
            CustomTextField(
                label: 'Date awarded',
                hint: 'dd/mm/yy',
                sIcon: Icons.calendar_month_outlined),
            CustomTextField(label: 'Description', maxLength: 500, maxLines: 8),
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
                              Navigator.pop(context);
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
                                  builder: (context) => const Awards()),
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
