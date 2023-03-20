import 'package:flutter/material.dart';

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
          ]),
        ),
      ),
    );
  }
}