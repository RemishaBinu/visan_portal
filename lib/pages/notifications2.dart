import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Notify2 extends StatelessWidget {
  const Notify2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 189, 189, 189),
                          width: 1))),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Icon(Icons.arrow_back_ios),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 52, 80),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(flex: 1, child: Icon(Icons.settings)),
                ],
              ),

            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text('Soft Solutions',
              style: TextStyle(fontFamily: 'Open Sans',
               fontSize: 18,
               color: Color.fromARGB(255, 2, 52, 80),
               fontWeight: FontWeight.bold),
               textAlign: TextAlign.start),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text('Payment still pending status for Tesl...',
              style: TextStyle(fontFamily: 'Open Sans',
               fontSize: 14,
               color: Color.fromARGB(255,117,117,117),
               ),
               textAlign: TextAlign.start),
            )
          ]),
        ),
      ),
    );
  }
}