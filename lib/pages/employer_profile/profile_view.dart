import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_link_text.dart';
import 'package:visan_portal/pages/application_review.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
                      child: Icon(Icons.arrow_back_ios),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Review Profile',
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
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Please check the details that you entered is correct, before submitting your Profile',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 117, 117, 117)),
                )),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Company details',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans'),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 117, 117, 117)))
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: Text(
                'SANTI SOLUTIONS PVT LTD',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Senior Recruiter | Vijayakumar R',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                '50 Employees',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 117, 117, 117),
                    fontSize: 12,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Address Information',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans'),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 117, 117, 117)))
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'India, Tamil Nadu\nSalem',
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
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                '641666',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 117, 117, 117),
                    fontSize: 12,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Basic Information',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans'),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 117, 117, 117)))
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Languages',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'English\nFrench\nSpanish',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Company’s Industry',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Software Develpment',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Company’s SubIndustry',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Android Development',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Company description',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. Aenean feugiat ex eu vestibulum vestibulum. Morbi a eleifend magna.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Job Title',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Android Development',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'Job Description',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. Aenean feugiat ex eu vestibulum vestibulum. Morbi a eleifend magna.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Category',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Software Development',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Job Type',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Internship',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Job schedule',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Full time',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Duration',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                '1 month',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Date of Joining',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                '05/03/2022',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'No. of people to be hired',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                '20\NUrgently hiring',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    'Salary Information',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 66, 66, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Open Sans'),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 117, 117, 117)))
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Paymet Limitations',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                '20k - 50K per month',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Benifits',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Flexible schedule',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Offers',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Shift Allowance',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 30),
                child: CustomButton(text: 'Submit'))
          ]),
        ),
      ),
    );
  }
}
