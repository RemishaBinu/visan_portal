import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/progress_indicator.dart';
import 'address_info.dart';

class CompanyDetails2 extends StatelessWidget {
  const CompanyDetails2({Key? key}) : super(key: key);

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
                const Expanded(
                  flex: 3,
                  child: Text(
                    'Company Details',
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
            CustomTextField(label: 'Company name', required: true),
            CustomTextField(label: 'Number of Employees', required: true),
            CustomTextField(label: 'Full Name', required: true),
            CustomTextField(
              label: 'Your role in hiring process',
              required: true,
              hint: 'Others',
              sIcon: Icons.keyboard_arrow_down_outlined,
            ),
            CustomTextField(
                label: 'Enter your role',
                required: true,
                hint: 'Senior Recruiter'),

            const SizedBox(height: 10),

            //Column
            //S

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
                                foregroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
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
                                  builder: (context) => const AddressInfo()),
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
