import 'package:flutter/material.dart';
import 'package:visan_portal/components/job_component.dart';

import '../components/progress_indicator.dart';
import '../components/training_component.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => ExperienceState();
}

class ExperienceState extends State<Experience> {
  bool isRecent = true;

  loadItems() {
    setState(() {
      isRecent = !isRecent;
    });
  }

  void loadData() {
    isRecent = true;
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  getButtonColor(bool isPrimary) {
    return isPrimary
        ? MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 191, 231, 255))
        : MaterialStateProperty.all<Color>(Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ProgressIndication(
                      text: '4 OF 7',
                      percent: .57,
                    )),
                const Expanded(
                  flex: 3,
                  child: Text(
                    'Experience',
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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: getButtonColor(isRecent),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 11, 88, 131)),
                            minimumSize: MaterialStateProperty.all(
                                const Size.fromHeight(45))),
                        onPressed: () {
                          loadItems();
                        },
                        child: const Text("Jobs"),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: getButtonColor(!isRecent),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 11, 88, 131)),
                          minimumSize: MaterialStateProperty.all(
                              const Size.fromHeight(45))),
                      onPressed: () {
                        loadItems();
                      },
                      child: const Text("Intern/Training"),
                    ))
              ],
            ),
            isRecent ? const JobComponent() : const TrainingComponent()
          ],
        ),
      )),
    );
  }
}
