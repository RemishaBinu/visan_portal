import 'package:flutter/material.dart';
import 'package:visan_portal/pages/resume_view.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../components/progress_indicator.dart';

class Awards extends StatelessWidget {
  const Awards({Key? key}) : super(key: key);

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
                      text: '7 OF 7',
                      percent: 1,
                    )),
                const Expanded(
                  flex: 3,
                  child: Text(
                    'Awards',
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
            const SizedBox(height: 10),
            CustomTextField(label: 'Title', required: true),
            CustomTextField(
                label: 'Date awarded',
                hint: 'dd/mm/yy',
                sIcon: Icons.calendar_month_outlined),
            CustomTextField(label: 'Description', maxLength: 500, maxLines: 8),
            const SizedBox(height: 20),
            Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: CustomButton(
                  text: 'Submit',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResumeView()),
                    );
                  },
                ))
          ]),
        ),
      ),
    );
  }
}
