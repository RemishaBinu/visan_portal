import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:visan_portal/components/drop_down.dart';
import 'package:visan_portal/pages/experience.dart';
import '../components/custom_button.dart';
import '../components/progress_indicator.dart';
import '../service/skills_service.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => SkillsState();
}

class SkillsState extends State<Skills> {
  late TextfieldTagsController _controller;
  List<String> selectedSkills = [];

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TextfieldTagsController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ProgressIndication(
                      text: '3 OF 7',
                      percent: .42,
                    )),
                const Expanded(
                  flex: 3,
                  child: Text(
                    'Skills',
                    style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.of(context).pop();
                        }))
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text('Skills',
                    style: TextStyle(fontSize: 16, fontFamily: 'Open Sans')),
                Text(
                  "*",
                  style: TextStyle(color: Color.fromARGB(255, 235, 87, 87)),
                )
              ],
            ),
            const SizedBox(height: 5),
            DropDownComponent(
                items: SkillsService.getInstance().getAllSkills(),
                getDropDownValue: (String value) {
                  if (selectedSkills.contains(value)) {
                    return;
                  }
                  setState(() {
                    selectedSkills.add(value);
                  });
                }),
            const SizedBox(height: 20),
            TextFieldTags(
              textfieldTagsController: _controller,
              initialTags: selectedSkills,
              textSeparators: const [' ', ','],
              letterCase: LetterCase.normal,
              validator: (String tag) {
                return null;
              },
              inputfieldBuilder:
                  (context, tec, fn, error, onChanged, onSubmitted) {
                return ((context, sc, tags, onTagDelete) {
                  return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: selectedSkills.map((String skillItem) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                color: Color.fromARGB(255, 224, 224, 224),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 5.0),
                              child: Wrap(
                                children: [
                                  Text(
                                    skillItem,
                                    style: const TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  const SizedBox(width: 4.0),
                                  InkWell(
                                    child: const Icon(
                                      Icons.close,
                                      size: 14.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        if (selectedSkills
                                            .contains(skillItem)) {
                                          selectedSkills.remove(skillItem);
                                        }
                                      });
                                      onTagDelete(skillItem);
                                    },
                                  ),
                                ],
                              ),
                            );
                          }).toList()));
                });
              },
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
                                foregroundColor:
                                    const Color.fromARGB(255, 0, 0, 0),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 11, 88, 131),
                                    width: 1),
                                minimumSize: const Size(90, 45)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 117, 117, 117)),
                            ))),
                    const SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: CustomButton(
                          text: 'Next',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Experience()),
                            );
                          },
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
