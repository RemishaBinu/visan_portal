import 'package:flutter/material.dart';
import 'package:visan_portal/model/saved_proposal.dart';

class SavedTile extends StatelessWidget {
  SavedProposal savedProposal;
  SavedTile({super.key, required this.savedProposal});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
       decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 189, 189, 189),
                          width: 1))),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(savedProposal.title,
              style: TextStyle(fontFamily: 'Open Sans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 66,66,66)),)),
            Icon(savedProposal.icon,
            color: Color.fromARGB(255, 11, 88, 131))
          ],
        ),
       Container(
        width: double.infinity,
        child: Text(savedProposal.company,
        textAlign: TextAlign.start,
        style: TextStyle(fontFamily: 'Open Sans',
        fontSize: 14,
        color: Color.fromARGB(255, 130, 130, 130)),)),
        SizedBox(height: 5),
        Row(children: [
          Expanded(
            flex:1,
            child: Text(savedProposal.workMode,
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 16,
              color: Color.fromARGB(255, 79,79,79)
            ))),
          Text(savedProposal.salary,
          style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 16,
              color: Color.fromARGB(255, 79,79,79),
              fontWeight: FontWeight.bold
            )
          )
        ],),
        Row(children: [
          Expanded(
            flex: 1,
            child: Text(savedProposal.status,
            style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 14,
                color: Color.fromARGB(255,235, 87, 87)
              )),
          ),
          Text(savedProposal.date,
          style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 14,
                color: Color.fromARGB(255,117,117,117)
              ))
        ],),
        SizedBox(height: 10),
        Row(children: [
          Expanded(
            flex: 1,
            child: Text(savedProposal.paymentStatus,
            style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 16,
                  color: Color.fromARGB(255,117,117,117),
                  fontWeight: FontWeight.w600
                )),
          ),
          Icon(savedProposal.locationIcon,
          color: Color.fromARGB(255, 79,79,79)),
          Text(savedProposal.place,
           style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14,
                  color: Color.fromARGB(255,66,66,66),
                  
                ))
        ],)
      ]),
    );
  }
}