import 'package:flutter/material.dart';

class ApplicationDetailsModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Text("Submitted Successfully !!! ",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 42, 204, 111)))),
            InkWell(
              child: Icon(Icons.close_rounded),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
              width: double.infinity,
              child: Text(
                "Android Application Developer",
                style: TextStyle(
                    fontSize: 19,
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontWeight: FontWeight.bold),
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  child: const Text("Soft Solutions",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Open Sans',
                          color: Color.fromARGB(255, 79, 79, 79)))),
              Container(
                  width: double.infinity,
                  child: const Text("Coimbatore, Tamilnadu",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Open Sans',
                          color: Color.fromARGB(255, 117, 117, 117)))),
              Container(
                  width: double.infinity,
                  child: const Text("2 days ago",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 117, 117, 117))))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          padding: const EdgeInsets.only(bottom: 5),
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Color.fromARGB(255, 224,224,224), width: 1))),
          child: Container(
              width: double.infinity,
              child: Text(
                "Details",
                style: TextStyle(
                    fontSize: 21,
                    color: Color.fromARGB(255, 66, 66, 66),
                    fontWeight: FontWeight.bold),
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  child: const Text("Salary",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 66, 66, 66)))),
              Container(
                  width: double.infinity,
                  child: const Text("25k- 30k/month",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          color: Color.fromARGB(255, 79, 79, 79)))),
                          SizedBox(height: 10),
              Container(
                  width: double.infinity,
                  child: const Text("Benifits & Perks",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 66, 66, 66)))),
              Container(
                  width: double.infinity,
                  child: const Text("Pay sick time",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          color: Color.fromARGB(255, 79, 79, 79)))),
                          SizedBox(height: 10),
              Container(
                  width: double.infinity,
                  child: const Text("Job Type",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 66, 66, 66)))),
              Container(
                  padding: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                   decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Color.fromARGB(255, 224,224,224), width: 1))),
                  child: const Text("Part Time\nInternship\nFresher",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Open Sans',
                          color: Color.fromARGB(255, 79, 79, 79)))),
             
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  child: const Text("Job Description",
                      style: TextStyle(
                          fontSize: 21, fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans',
                          color: Color.fromARGB(255, 66,66,66)))),
            
            ],
          ),
        ),
       
      
      ]),
    ));
  }
}
