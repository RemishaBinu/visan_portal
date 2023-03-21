import 'package:flutter/material.dart';
import 'package:visan_portal/pages/experience.dart';

import '../components/custom_button.dart';
import '../components/progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
                      text: '3 OF 7',
                      percent: .28,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Skills',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(flex: 1, child: Icon(Icons.close)),
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
                                  builder: (context) => const Experience()),
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