import 'package:flutter/material.dart';
import 'package:visan_portal/components/custom_button.dart';
import 'package:visan_portal/pages/settings_job_seeker/change_email.dart';

class EmailModal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 239,
      width: 428,
      padding: EdgeInsets.all(20),
      child: Column(
            children: [
             Row(
               children: [
                Expanded(
                   flex: 1,
                   child: Text('Current email Address',
                   style: TextStyle(fontSize: 21, color: Color.fromARGB(255, 66, 66, 66),
                   fontFamily: 'Open Sans'),
                   textAlign: TextAlign.start),


                 ),
                 InkWell(child: Expanded(child: Icon(Icons.close),
                 ),
                 onTap:() {
                    Navigator.of(context).pop();
                  },
                 )
               ],
             ),
             Container(
              width: double.infinity,
               child: Text('vijaykumaar1907@gmail.com',
               style: TextStyle(fontSize: 16,
               color: Color.fromARGB(255, 66, 66, 66),
               fontFamily: 'Open Sans'),
               textAlign: TextAlign.start,),
             ),
             Container(
              padding: EdgeInsets.only(left: 50, right: 50, top: 60),
              child: CustomButton(text: 'Change',
              onPressed: (){
                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangeEmail()),
                      );
              }))
             
             
             
         
           
            
               
             
             
            
           
                 
             
             
                
              
            ],
          
        
      ),
    );
  }

}