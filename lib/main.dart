import 'package:flutter/material.dart';
import 'package:visan_portal/pages/login.dart';
import 'package:visan_portal/pages/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}





 //CustomTextField(label: "Email address", required: true,),
 //           CustomTextField(label: "Place"),
 //           CustomButton(text: "Submit")
