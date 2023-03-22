import 'package:flutter/material.dart';
import 'package:visan_portal/pages/employer_profile/company_details_2.dart';
import 'package:visan_portal/pages/required_skills.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/progress_indicator.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ProgressIndication(
                      text: '1 OF 4',
                      percent: .25,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Company Details',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(flex: 1, child: Icon(Icons.close)),
              ],
            ),
            CustomTextField(label: 'Company name', required: true),
            CustomTextField(label: 'Number of Employees', required: true),
            CustomTextField(label: 'Full Name', required: true),
            CustomTextField(
              label: 'Your role in hiring process',
              required: true,
              hint: 'Select',
              sIcon: Icons.keyboard_arrow_down_outlined,
            ),

            SizedBox(height: 10),

            //Column
            //S

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
                                  builder: (context) => const CompanyDetails2()),
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
