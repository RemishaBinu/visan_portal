import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/pages/signin.dart';
import 'package:visan_portal/pages/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(children: [
            Container(child: Image.asset("assets/images/back.png")),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const Text(
                      'Visan Port',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 300, bottom: 20),
                      child: CustomButton(
                          text: 'Login',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                            );
                          }),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(0, 11, 88, 131)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              minimumSize: MaterialStateProperty.all(
                                  const Size.fromHeight(45)),
                              side: MaterialStateProperty.all(const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 1.0,
                                  style: BorderStyle.solid))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: const Text('Sign Up')),
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 24,
                                width: 24,
                                padding: const EdgeInsets.only(right: 10),
                                child:
                                    Image.asset('assets/images/gooogle.png')),
                            const InkWell(
                              child: Text(
                                'Continue with Google',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            )
                          ],
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
