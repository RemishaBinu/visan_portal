import 'package:flutter/material.dart';
import 'package:visan_portal/pages/employer_profile/salary_details.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/progress_indicator.dart';
import 'company_details_2.dart';

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => BasicInfoState();
}

class BasicInfoState extends State<BasicInfo> {
  bool value = false;
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
                      text: '3 OF 4',
                      percent: .75,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Basic Information',
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
            CustomTextField(
                label: 'Language',
                hint: 'Select',
                sIcon: Icons.keyboard_arrow_down_outlined,
                required: true),
            CustomTextField(
                label: 'Company’s Industry',
                required: true,
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
                label: 'Company’s Sub Industry',
                required: true,
                hint: 'Others',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
                label: 'Company description', maxLength: 250, maxLines: 5),
            CustomTextField(label: 'Job title', required: true),
            CustomTextField(
                label: 'Job description',
                maxLength: 250,
                maxLines: 5,
                required: true),
            CustomTextField(
                label: 'Select the Category suits for your job',
                required: true,
                hint: 'Select',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
                label: 'Type of Job',
                hint: 'Internship',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
                label: 'Job Schedule',
                required: true,
                hint: 'Morning Shift',
                sIcon: Icons.keyboard_arrow_down_outlined),
            CustomTextField(
              label: 'How long is the job',
              required: true,
              hint: '1month',
            ),
            CustomTextField(
              label: 'Planned start date for this job',
              hint: 'Yes',
            ),
            CustomTextField(
              label: 'Enter the date of Joining',
              hint: 'dd/mm/yy',
              sIcon: Icons.calendar_month_outlined,
            ),
            CustomTextField(
                label: 'How many people do you want to hire',
                required: true,
                hint: '20',
                sIcon: Icons.keyboard_arrow_down_outlined),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                SizedBox(width: 10),
                Text(
                  'You Urgently hire for this role ?',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 189, 189, 189),
                      fontFamily: 'Open Sans'),
                ),
              ],
            ),
            CustomTextField(
                label: 'How Quickly you need to hire this role',
                hint: 'Urgently hiring',
                sIcon: Icons.keyboard_arrow_down_outlined),
            SizedBox(height: 20),
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
                                  builder: (context) => const SalaryDetails()),
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
