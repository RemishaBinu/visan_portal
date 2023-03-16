import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FileUpload extends StatelessWidget {
 
  String fileName;
  IconData? sIcon;
  IconData? pIcon;

 FileUpload({super.key, required this.fileName, this.sIcon, this.pIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/log.png')),

            Container(
              child: Expanded(
                
              flex: 4,
              child: Text(this.fileName,
              textAlign: TextAlign.center,)),
            ),

            Expanded(
            flex: 1,
            child: Icon(this.sIcon,
            color: Color.fromARGB(255, 11, 88, 131),))

        ],
       
        
      ),
    );
  }
}