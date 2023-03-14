import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/job.dart';

class JobCategory extends StatelessWidget {
  Job jobs;
 
  JobCategory({super.key, required this.jobs});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
     padding: EdgeInsets.only(top: 30, left: 10,right: 10),
      margin: EdgeInsets.only(top: 30),
      
       decoration: BoxDecoration(
                          border:Border.all(color: Color.fromARGB(255, 47, 142, 194)
                      
                          ),
                           borderRadius: BorderRadius.circular(10)
                        ),
      child: Column(children: [
        Icon(this.jobs.icon,
        color: Color.fromARGB(255, 47, 142, 194),),
         Container(
          padding: EdgeInsets.only(top: 10),
           child: Text(this.jobs.job,
           textAlign: TextAlign.center,
           style: TextStyle(color: Color.fromARGB(255, 117,117,117)),),
         )
      ]),
    );
  }
}