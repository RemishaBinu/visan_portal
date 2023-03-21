import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';

class ResumeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("Details",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
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
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 1))),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Personal Details",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 11, 88, 131))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: const Text("Vijayakumar R",
                            style: TextStyle(fontSize: 15))),
                    Container(
                        width: double.infinity,
                        child: const Text("Application Developer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))),
                    Container(
                        width: double.infinity,
                        child: const Text("TamilNadu, India.",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, left: 16),
                child: Column(children: [
                  Row(
                    children: const [
                      Text("\u2022", style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              style: TextStyle(fontSize: 18)))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text("\u2022", style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                              "Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                              style: TextStyle(fontSize: 18)))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text("\u2022", style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                              "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.",
                              style: TextStyle(fontSize: 18)))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text("\u2022", style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                              "Curabitur tempus urna at turpis condimentum lobortis.",
                              style: TextStyle(fontSize: 18)))
                    ],
                  ),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 1))),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Educational Details",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 11, 88, 131))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: const Text("Level of Education",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Container(
                        width: double.infinity,
                        child: const Text("Bachelor’s degree",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400))),
                    Container(
                        width: double.infinity,
                        child: const Text(
                            "Paavai Engineering College,TamilNadu",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54))),
                    Container(
                        width: double.infinity,
                        child: const Text("2019 - 2022",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: const Text("Field of study",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Container(
                        width: double.infinity,
                        child: const Text("Computer Science",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 1))),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Skills",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 11, 88, 131))
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: const [Expanded(flex: 1, child: Text("Figma"))],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(flex: 1, child: Text("Android")),
                        Icon(Icons.horizontal_rule_rounded,
                            color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(flex: 1, child: Text("UI/UX")),
                        Icon(Icons.horizontal_rule_rounded,
                            color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(flex: 1, child: Text("SQlite")),
                        Icon(Icons.horizontal_rule_rounded,
                            color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(flex: 1, child: Text("Firebase")),
                        Icon(Icons.horizontal_rule_rounded,
                            color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 1))),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Experiences",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 11, 88, 131))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: const Text("Application Developer",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Container(
                        width: double.infinity,
                        child: const Text("MDU Santisolution pvt ltd.,",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400))),
                    Container(
                        width: double.infinity,
                        child: const Text("Bangalore, Karnataka",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54))),
                    SizedBox(height: 8),
                    Container(
                        width: double.infinity,
                        child: const Text("Jun 2022 - Aug 2022",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54))),
                    Container(
                        width: double.infinity,
                        child: const Text("Part time",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w800)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: const Text("Data Scientist",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Container(
                        width: double.infinity,
                        child: const Text("Amazon",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400))),
                    Container(
                        width: double.infinity,
                        child: const Text("Bangalore, Karnataka",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54))),
                    SizedBox(height: 8),
                    Container(
                        width: double.infinity,
                        child: const Text("Jun 2022 - Aug 2022",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54))),
                    Container(
                        width: double.infinity,
                        child: const Text("Full time",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w800)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 1))),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Certifications",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 11, 88, 131))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Android Developer Certification",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(fontSize: 15))),
                        SizedBox(width: 20)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Software designer",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("upto 25th july 2022",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20)
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(fontSize: 15))),
                        SizedBox(width: 20)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 1))),
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Pattents",
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontWeight: FontWeight.bold),
                    )),
                    Icon(Icons.edit_outlined,
                        color: Color.fromARGB(255, 11, 88, 131))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Online Education System",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("https://online-education-system",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20)
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("july 2022",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(
                            flex: 1,
                            child: const Text("Pattent number",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        Expanded(
                            flex: 2,
                            child: Text(
                              '-  1566GFG51',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 130, 130, 130)),
                            ))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Ticket Booking System online",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("https://online-education-system",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20)
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("july 2022",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: const [
                        Expanded(
                            flex: 1,
                            child: const Text("Pattent number",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        Expanded(
                            flex: 2,
                            child: Text(
                              '-  55557GG51',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 130, 130, 130)),
                            ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black54, width: 1))),
                      child: Row(
                        children: const [
                          Expanded(
                              child: Text(
                            "Awards and Achivements",
                            style: TextStyle(
                                fontSize: 19,
                                color: Color.fromARGB(255, 11, 88, 131),
                                fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.edit_outlined,
                              color: Color.fromARGB(255, 11, 88, 131))
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text(
                                "Best Accossiate Developer Awards",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Jun 2021",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text(
                                "Best Accossiate Developer Awards",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Jun 2021",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text(
                                "Best Accossiate Developer Awards",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        Icon(Icons.delete_outline_rounded, color: Color.fromARGB(255, 11, 88, 131))
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                            child: const Text("Jun 2021",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))),
                        SizedBox(width: 20)
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                        child: CustomButton(text: 'Save'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
