import 'package:flutter/material.dart';
import 'package:visan_portal/pages/patents.dart';
import 'package:visan_portal/pages/required_skills.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../components/progress_indicator.dart';

class Certifications extends StatefulWidget {
  const Certifications({super.key});

  @override
  State<Certifications> createState() => CertificationsState();
}

class CertificationsState extends State<Certifications> {
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
                      text: '5 OF 7',
                      percent: .71,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Certifications',
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
            CustomTextField(label: 'Title', required: true),
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
              'Valid for lifetime',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 189, 189, 189),
                  fontFamily: 'Open Sans'),
            ),
          ],
        ),
          

            SizedBox(height: 10),
           
           
            Row(
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
            CustomTextField(
                    label: 'Description', maxLength: 500, maxLines: 8),
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
                            onPressed: (){
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
                                  builder: (context) => const Patents()),
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
