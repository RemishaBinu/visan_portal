import 'package:flutter/material.dart';
import 'package:visan_portal/pages/home_recruiter.dart';
import 'package:visan_portal/service/recruiter_service.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => ContactInfoState();
}

class ContactInfoState extends State<ContactInfo> {
  bool value = false;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                      child: const Icon(Icons.arrow_back_ios),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )),
                const Expanded(
                  flex: 4,
                  child: Text(
                    'Contact Info',
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
            CustomTextField(
              label: 'Email ID',
              required: true,
              hint: 'vijaykumaar1907@gmail.com',
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.check,
                  onChanged: (bool? check) {
                    setState(() {
                      this.check = check!;
                    });
                  },
                ),
                const SizedBox(width: 5),
                const Text(
                  'Use this mail ID to recieve Resumes',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 117, 117, 117),
                      fontFamily: 'Open Sans'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            CustomTextField(label: 'Alternate Email ID', required: true),
            const Row(
              children: [
                Text('Phone Number',
                    style:
                        TextStyle(fontSize: 16, fontFamily: 'Open Sans')),
                Text(
                  "*",
                  style: TextStyle(color: Color.fromARGB(255, 235, 87, 87)),
                )
              ],
            ),
            const SizedBox(height: 5),
            Row(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(right: 3.0),
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 189, 189, 189)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Image.asset('assets/images/us.png'),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '(+91) 45818 74858',
                      hintStyle:
                          const TextStyle(color: Color.fromARGB(255, 66, 66, 66)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                              width: 1.0, color: Colors.black54)),
                    ),
                  ))
            ]),
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
                const SizedBox(width: 5),
                const Text(
                  ' Applicant can call directly after got selected',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 117, 117, 117),
                      fontFamily: 'Open Sans'),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              height: 80,
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 11, 88, 131),
                                    width: 1),
                                minimumSize: const Size(90, 45)),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            })),
                    const SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: CustomButton(
                          text: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeRecruiter(
                                      recruiterService:
                                          RecruiterService.instance)),
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
