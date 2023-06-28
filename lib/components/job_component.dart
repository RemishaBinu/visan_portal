import 'package:flutter/material.dart';
import 'package:visan_portal/components/radio.dart';
import 'package:visan_portal/pages/certifications.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class JobComponent extends StatefulWidget {
  const JobComponent({Key? key}) : super(key: key);

  @override
  State<JobComponent> createState() => JobComponentState();
}

class JobComponentState extends State<JobComponent> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          label: 'Job Title',
          hint: 'Select',
          required: true,
        ),
        const CustomTextField(
          label: 'Company',
        ),
        const CustomTextField(
          label: 'Location ',
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Checkbox(
              value: value,
              onChanged: (bool? value) {
                setState(() {
                  this.value = value!;
                });
              },
            ),
            const SizedBox(width: 10),
            const Text(
              'Currently working here',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 189, 189, 189),
                  fontFamily: 'Open Sans'),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
                child: CustomTextField(
              label: 'From',
              hint: 'dd/mm/yy',
              sIcon: Icons.calendar_month_outlined,
            )),
            SizedBox(
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
        const RadioButton(),
        const CustomTextField(
            label: 'Description', maxLength: 500, maxLines: 8),
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
                              builder: (context) => const Certifications()),
                        );
                      },
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
