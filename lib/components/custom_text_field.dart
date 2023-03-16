import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  String? hint;
  bool? required;
  int? maxLength;
  int? maxLines;
  Function(String)? onChanged;
  CustomTextField(
      {super.key,
      required this.label,
      this.hint,
      this.maxLength,
      this.onChanged,
      this.maxLines,
      this.required});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Text(label, style: const TextStyle(color: Colors.black87)),
                  Text(
                    required == true ? "*" : "",
                    style: TextStyle(color: Colors.red[900]),
                  )
                ],
              )),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(width: 1.0, color: Colors.black54)),
                hintText: hint),
            onChanged: onChanged,
            maxLength:maxLength ,
            maxLines: maxLines,
          )
        ],
      ),
    );
  }
}
