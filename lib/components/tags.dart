import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:textfield_tags/textfield_tags.dart';

class TagsComponent extends StatefulWidget {
  List<String> tags;
  TagsComponent({super.key, required this.tags});

  @override
  State<TagsComponent> createState() => _TagsComponentState();
}

class _TagsComponentState extends State<TagsComponent> {
  late TextfieldTagsController _controller;

   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
   
  }

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
    return Column(
      children: [
        TextFieldTags(
          textfieldTagsController: _controller,
          initialTags: widget.tags,
          textSeparators: const [' ', ','],
          letterCase: LetterCase.normal,
          validator: (String tag) {
            if (tag == 'php') {
              return 'No, please just no';
            } else if (_controller.getTags!.contains(tag)) {
              return 'you already entered that';
            }
            return null;
          },
          inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
            return ((context, sc, tags, onTagDelete) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: tags.map((String tag) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Color.fromARGB(255, 47, 142, 194),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Wrap(
                            children: [
                              InkWell(
                                child: Text(
                                  '$tag',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                ),
                                onTap: () {
                                  print("$tag selected");
                                },
                              ),
                              const SizedBox(width: 4.0),
                              InkWell(
                                child: const Icon(
                                  Icons.close,
                                  size: 14.0,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                onTap: () {
                                  onTagDelete(tag);
                                },
                              )
                            ],
                          ),
                        );
                      }).toList()),
                ),
              );
            });
          },
        ),
      ],
    );
  }
}
