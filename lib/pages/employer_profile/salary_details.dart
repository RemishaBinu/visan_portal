import 'package:flutter/material.dart';
import 'package:visan_portal/pages/employer_profile/salary_details2.dart';
import 'package:visan_portal/pages/required_skills.dart';
import 'package:visan_portal/pages/resume_view.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/progress_indicator.dart';

class SalaryDetails extends StatelessWidget {
  const SalaryDetails({super.key});

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
                      text: '4 OF 4',
                      percent: 1,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Salary Details',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(flex: 1, child: Icon(Icons.close)),
              ],
            ),
            SizedBox(height: 10),
            CustomTextField(
                label: 'Payment Limitations',
                required: true,
                hint: 'Range',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(label: 'Minimum', required: true),
            CustomTextField(label: 'Maximum', required: true),
            CustomTextField(
                label: 'Compensation',
                required: true,
                hint: 'per month',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
                label: 'Benifits',
                hint: 'Flexible Schedule',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
                label: 'Offers',
                hint: 'Shift Allowance',
                sIcon: Icons.keyboard_arrow_down_outlined),
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: CustomButton(
                  text: 'Next',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SalaryDetails2()),
                    );
                  },
                ))
          ]),
        ),
      ),
    );
  }
}
