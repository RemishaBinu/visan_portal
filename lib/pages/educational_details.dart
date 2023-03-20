import 'package:flutter/material.dart';
import 'package:visan_portal/pages/required_skills.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../components/progress_indicator.dart';
class EducationDetails extends StatefulWidget {
  const EducationDetails({super.key});

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
                Expanded(
                  flex: 3,
                  child: Text(
                    'Educational Details',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(flex: 1, child: Icon(Icons.close)),
              ],
            ),
            CustomTextField(label: 'Level of Education', required: true),
            CustomTextField(label: 'Field of study'),
            CustomTextField(label: 'College or University'),
            CustomTextField(label: 'Location '),

            SizedBox(height: 10),
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
                          'Currently studing here',
                          style: TextStyle(fontSize: 16,
                          color: Color.fromARGB(255,189, 189, 189),
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
                                    foregroundColor:
                                        Color.fromARGB(255, 0, 0, 0),
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 11, 88, 131),
                                        width: 1),
                                    minimumSize: Size(90, 45)),
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 117, 117, 117)),
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



