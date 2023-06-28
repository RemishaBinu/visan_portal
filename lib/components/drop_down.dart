import 'package:flutter/material.dart';

class DropDownComponent extends StatefulWidget {
  final List<String> items;
  final Function(String value) getDropDownValue;
  const DropDownComponent(
      {Key? key, required this.getDropDownValue, required this.items})
      : super(key: key);

  @override
  State<DropDownComponent> createState() => DropDownComponentState();
}

class DropDownComponentState extends State<DropDownComponent> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 189, 189, 189), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 189, 189, 189), width: 1),
        ),
      ),

      //  dropdownColor: Colors.greenAccent,
      value: 'Figma',
      onChanged: (String? newValue) {
        if (newValue == null) {
          return;
        }
        widget.getDropDownValue(newValue);

        //
      },

      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Open Sans',
                color: Color.fromARGB(255, 117, 117, 117)),
          ),
        );
      }).toList(),
    );
  }
}
