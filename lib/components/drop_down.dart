import 'package:flutter/material.dart';

class DropDownComponent extends StatefulWidget {
  List<String> items;
  Function( String value) getDropDownValue;
  DropDownComponent({super.key, required this.getDropDownValue, required this.items});

  @override
  State<DropDownComponent> createState() => DropDownComponentState();
}

class DropDownComponentState extends State<DropDownComponent> {
  
  @override
  Widget build(BuildContext context) {

    return DropdownButtonFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
       
          borderSide: BorderSide(color: Color.fromARGB(255, 189,189,189), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
    
          borderSide: BorderSide(color: Color.fromARGB(255, 189,189,189), width: 1),
        ),
        
      ),
     
    //  dropdownColor: Colors.greenAccent,
      value: 'Figma',
      onChanged: (String? newValue) {
        if(newValue == null){
          return;
        }
        widget.getDropDownValue(newValue);
        
      //
      },
     
      items: widget.items
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 16,
            fontFamily: 'Open Sans', 
            color: Color.fromARGB(255, 117, 117, 117)),
          ),
        );
      }).toList(),
    );
  }
}
