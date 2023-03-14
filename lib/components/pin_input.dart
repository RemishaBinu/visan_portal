import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class PinInput extends StatelessWidget {
  const PinInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(top: 50),
     width: 200,
      child: PinInputTextField(
       pinLength: 5,
       decoration: UnderlineDecoration(
         colorBuilder: PinListenColorBuilder(Color.fromARGB(255, 229, 229, 234), Color.fromARGB(255, 229, 229, 234)),
         bgColorBuilder: PinListenColorBuilder(Color.fromARGB(0, 229, 229, 234), Color.fromARGB(0, 229, 229, 234)),
         
         ),
      ),
    );
  }
}