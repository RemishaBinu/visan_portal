import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  Function()? onPressed;
  String text;
  CustomButton({
    super.key,
    this.onPressed,
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 11, 88, 131)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all(Size.fromHeight(45))
      ),
      onPressed: onPressed,
      child: Text(text));
  }

}