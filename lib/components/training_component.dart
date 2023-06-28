import 'package:flutter/material.dart';
import 'package:visan_portal/components/radio.dart';
import '../pages/certifications.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class TrainingComponent extends StatefulWidget {
  const TrainingComponent({Key? key}) : super(key: key);

  @override
  State<TrainingComponent> createState() => TrainingComponentState();
}

class TrainingComponentState extends State<TrainingComponent> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          label: 'Title of your role',
          hint: 'Select',
          required: true,
        ),
        const CustomTextField(
          label: 'Company / Organization',
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
          label: 'Description',
          maxLength: 500,
          maxLines: 8,
          hint:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.',
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
