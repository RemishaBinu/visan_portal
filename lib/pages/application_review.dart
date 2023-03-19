import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_text_field.dart';
import 'package:visan_portal/components/file_upload.dart';
import 'package:visan_portal/components/header_component.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:visan_portal/modals/resume_summary_modal.dart';
import 'package:visan_portal/pages/application_submission.dart';
import 'package:visan_portal/pages/edit_profile.dart';

class ApplicationReview extends StatelessWidget {
  const ApplicationReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: Icon(Icons.arrow_back_ios)),
                Expanded(
                    flex: 4,
                    child: Text(
                      'Review Application',
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 52, 80),
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans'),
                    )),
                Expanded(flex: 1, child: Icon(Icons.vertical_distribute_sharp))
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Soft Solutions',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Coimbatore,Tamilnadu',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 14,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'See Details',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 47, 142, 194),
                  fontFamily: 'Open Sans',
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 224, 224, 224),
                          width: 1))),
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        'Contact Information',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans'),
                      ),
                    ),
                    Expanded(flex: 1, child: Icon(Icons.edit))
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Full name ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Vijayakumar R',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 79, 79, 79),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Email Address ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'vijaykumaar1907@gmail.com',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 79, 79, 79),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'City, State ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'TamilNadu, India',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 79, 79, 79),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Phone Number',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                '+91 93605 13967',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 79, 79, 79),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            CustomTextField(
              label: 'Write a cover letter (optional)',
              maxLength: 500,
              maxLines: 8,
            ),
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Text(
                      'Resume',
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 52, 80),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans'),
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.download_outlined,
                        color: Color.fromARGB(255, 11, 88, 131)))
              ],
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: DottedBorder(
                  color: Colors.black,
                  strokeWidth: 1,
                  child: FileUpload(
                      fileName: 'Visanport - Resume',
                      sIcon: Icons.remove_red_eye_outlined),
                ),
              ),
              onTap: () {
                showModalBottomSheet(context: context,
                  builder: (context){
                    return ResumeSummaryModal();
                  }
                );
              },
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'Additional Documents',
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 52, 80),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Open Sans'),
              ),
              alignment: Alignment.centerLeft,
            ),
            DottedBorder(
              color: Colors.black,
              strokeWidth: 1,
              child: FileUpload(
                fileName: 'Cover letter and other additional documents  ',
                sIcon: Icons.upload_outlined,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: CustomButton(
                    text: 'Submit',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const EditProfile()),
                      );
                    }))
          ],
        ),
      )),
    );
  }
}
