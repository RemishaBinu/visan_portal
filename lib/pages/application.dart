import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/components/custom_link_text.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
          child: Column(children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10, bottom: 10),
                  child: Text(
                    'Android Application Developer',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.bookmark_border_rounded,
                ),
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
                'Coimbatore,Tamilnadu \n2 days ago ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 14,
                    fontFamily: 'Open Sans'),
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
              child: Text(
                'Details',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Open Sans'),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Salary ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only( bottom: 10),
              child: Text(
                '25k- 30k/month',
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
                'Benifits & Perks',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only( bottom: 10),
              child: Text(
                'Pay sick time',
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
                'Job Type',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
             
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 224, 224, 224),
                          width: 1))),
              padding: EdgeInsets.only( bottom: 10),
              child: Text(
                'Part Time \nInternship \nFresher',
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
                'Job Description',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 21,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
             
             
              padding: EdgeInsets.only( bottom: 10),
              child: Text(
                '          Lorem ipsum dolor sit amet, consectetur  adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Curabitur tempor quis eros tempus lacinia. Nam bibendum pellentesque quam a convallis. Sed ut vulputate nisi. Integer in felis sed leo vestibulum venenatis. Suspendisse quis arcu sem. Aenean feugiat ex eu vestibulum vestibulum. Morbi a eleifend magna.',
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
                'Responsiblities',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 21,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
             
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 224, 224, 224),
                          width: 1))),
              padding: EdgeInsets.only( bottom: 10),
              child: Text('1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n2. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. \n3. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n4. Curabitur tempus urna at turpis condimentum lobortis.',
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
                'Hiring Insights',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontSize: 18,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
             
             
              padding: EdgeInsets.only( bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.person_add_alt_1_outlined),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Ongoing need to fill this role',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 79, 79),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
             
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 224, 224, 224),
                          width: 1))),
              padding: EdgeInsets.only( bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.alarm),
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 20),
                    child: Text(
                      'Urgently hiring',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromARGB(255, 79, 79, 79),
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
             Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 10),
                    child: CustomButton(text: 'Apply now')),
                  Text('Copy link',
                  style: TextStyle(fontSize: 14,
                  color: Color.fromARGB(255, 47, 142, 194),
                  fontFamily: 'Open Sans'),),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                    Column(children: [
                      Icon(Icons.bookmark_border_rounded,
                      color: Color.fromARGB(255, 11, 88, 131)),
                      Text('Save',
                      style: TextStyle(color: Color.fromARGB(255, 79,79,79),
                      fontSize: 14,
                      fontFamily: 'Open Sans'),)
                    ],),
                    Column(children: [
                      Icon(Icons.flag_outlined,
                       color: Color.fromARGB(255, 11, 88, 131)),
                      Text('Report',
                      style: TextStyle(color: Color.fromARGB(255, 79,79,79),
                      fontSize: 14,
                      fontFamily: 'Open Sans'),)
                    ],),
                    Column(
                      children: [
                        Icon(Icons.share,
                         color: Color.fromARGB(255, 11, 88, 131)),
                      Text('Share',
                      style: TextStyle(color: Color.fromARGB(255, 79,79,79),
                      fontSize: 14,
                      fontFamily: 'Open Sans'),)
                      ],
                    )
                                  ],
                    ),
                  )
            
          ]),
        ),
      ),
    );
  }
}
