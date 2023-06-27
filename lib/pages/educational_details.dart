import 'package:flutter/material.dart';
import 'package:visan_portal/pages/required_skills.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../components/progress_indicator.dart';

class EducationDetails extends StatefulWidget {
  const EducationDetails({Key? key}) : super(key: key);

  @override
  State<EducationDetails> createState() => EducationDetailsState();
}

class EducationDetailsState extends State<EducationDetails> {
  bool value = false;
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
                      text: '2 OF 7',
                      percent: .28,
                    )),
                const Expanded(
                  flex: 3,
                  child: Text(
                    'Educational Details',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                        child: const Icon(Icons.close),
                        onTap: () {
                          Navigator.of(context).pop();
                        })),
              ],
            ),
            CustomTextField(label: 'Level of Education', required: true),
            CustomTextField(label: 'Field of study'),
            CustomTextField(label: 'College or University'),
            CustomTextField(label: 'Location '),

            const SizedBox(height: 10),
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
                const SizedBox(width: 10),
                const Text(
                  'Currently studing here',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 189, 189, 189),
                      fontFamily: 'Open Sans'),
                ),
              ],
            ),
            //Column
            //S
            Row(
              children: [
                Expanded(
                    child: CustomTextField(
                  label: 'From',
                  hint: 'dd/mm/yy',
                  sIcon: Icons.calendar_month_outlined,
                )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: CustomTextField(
                  label: 'To',
                  hint: '20/05/2022',
                  sIcon: Icons.calendar_month_outlined,
                )),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              height: 80,
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 11, 88, 131),
                                    width: 1),
                                minimumSize: const Size(90, 45)),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })),
                    const SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: CustomButton(
                          text: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Skills()),
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
