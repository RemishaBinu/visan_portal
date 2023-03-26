import 'package:flutter/material.dart';
import 'package:visan_portal/model/saved_proposal.dart';
import 'package:visan_portal/pages/proposal.dart';
import 'package:visan_portal/service/saved_proposal_service.dart';
import '../components/saved_tile.dart';
import '../modals/application_details_modal.dart';

class Saved extends StatefulWidget {
  SavedProposalService savedProposalService;
  Saved({super.key, required this.savedProposalService});

  @override
  State<Saved> createState() => SavedState();
}

class SavedState extends State<Saved> {
  late List<SavedProposal> savedDetails;

  @override
  void initState() {
    List<SavedProposal> savedData = widget.savedProposalService.getSavedData();
    setState(() {
      savedDetails = savedData;
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
                      'Saved',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 11, 88, 131),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Icon(Icons.settings),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Proposal(
                                    savedProposalService:
                                        SavedProposalService.instance)),
                          );
                        },
                      )),
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: this.savedDetails.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(),
                      child: InkWell(
                        child: SavedTile(
                          savedProposal: savedDetails[index],
                        ),
                        onTap: () {
                showModalBottomSheet(context: context,
                  builder: (context){
                    return ApplicationDetailsModal();
                  }
                );
              },
                      ));
                }),
          ]),
        ),
      ),
    );
    ;
  }
}
