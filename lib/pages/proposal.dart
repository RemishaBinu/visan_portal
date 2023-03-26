import 'package:flutter/material.dart';
import 'package:visan_portal/model/saved_proposal.dart';
import 'package:visan_portal/service/saved_proposal_service.dart';
import '../components/proposal_tile.dart';

class Proposal extends StatefulWidget {
  SavedProposalService savedProposalService;
  Proposal({super.key, required this.savedProposalService});

  @override
  State<Proposal> createState() => ProposalState();
}

class ProposalState extends State<Proposal> {
  late List<SavedProposal> proposalDetails;

  @override
  void initState() {
    List<SavedProposal> proposalData =
        widget.savedProposalService.getProposalData();
    setState(() {
      proposalDetails = proposalData;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Column(children: [
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 189, 189, 189),
                          width: 1))),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Icon(Icons.arrow_back_ios),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Proposals',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 11, 88, 131),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(flex: 1, child: Icon(Icons.settings)),
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: this.proposalDetails.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: ProposalTile(
                        ProposalData: proposalDetails[index],
                      ));
                }),
          ]),
        ),
      ),
    );
  }
}
