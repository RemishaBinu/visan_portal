import 'package:flutter/material.dart';

class FileUpload extends StatelessWidget {
  final String fileName;
  final IconData? sIcon;
  final IconData? pIcon;

  const FileUpload({Key? key, required this.fileName, this.sIcon, this.pIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/log.png')),
        Expanded(
            flex: 4,
            child: Text(
              fileName,
              textAlign: TextAlign.start,
            )),
        Expanded(
            flex: 1,
            child: Icon(
              sIcon,
              color: const Color.fromARGB(255, 11, 88, 131),
            ))
      ],
    );
  }
}
