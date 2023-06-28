import 'package:flutter/material.dart';
import 'package:visan_portal/model/saved_proposal.dart';

class ProposalTile extends StatelessWidget {
  final SavedProposal proposaldata;
  const ProposalTile({Key? key, required this.proposaldata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 189, 189, 189), width: 1))),
      child: Column(children: [
        SizedBox(
          width: double.infinity,
          child: Text(proposaldata.title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 66, 66, 66))),
        ),
        SizedBox(
            width: double.infinity,
            child: Text(proposaldata.company,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 14,
                    color: Color.fromARGB(255, 130, 130, 130)))),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Text(proposaldata.workMode,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        color: Color.fromARGB(255, 79, 79, 79)))),
            Text(proposaldata.salary,
                style: const TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16,
                    color: Color.fromARGB(255, 79, 79, 79),
                    fontWeight: FontWeight.bold))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Text(proposaldata.status,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 14,
                        color: Color.fromARGB(255, 235, 87, 87)))),
            Text(proposaldata.date,
                style: const TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 14,
                    color: Color.fromARGB(255, 117, 117, 117)))
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Text(proposaldata.paymentStatus,
                    style: const TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        color: Color.fromARGB(255, 117, 117, 117),
                        fontWeight: FontWeight.w600))),
            Icon(proposaldata.locationIcon,
                color: const Color.fromARGB(255, 79, 79, 79)),
            Text(proposaldata.place,
                style: const TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 14,
                  color: Color.fromARGB(255, 66, 66, 66),
                ))
          ],
        )
      ]),
    );
  }
}
