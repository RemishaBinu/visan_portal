import 'package:flutter/material.dart';
import 'package:visan_portal/modals/personal_details_modal.dart';
import 'package:visan_portal/model/recruiter_model.dart';

class RecruiterTile extends StatelessWidget {
  final RecruiterModel recruiterDetails;
  const RecruiterTile({Key? key, required this.recruiterDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(recruiterDetails.name,
                        style: const TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 66, 66, 66)))),
                SizedBox(
                    width: double.infinity,
                    child: Text(recruiterDetails.jobRole,
                        style: const TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 66, 66, 66)))),
                InkWell(
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(recruiterDetails.status,
                          style: const TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 11, 88, 131)))),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return PersonalDetailsModal();
                        });
                  },
                )
              ],
            )),
        const Expanded(child: Icon(Icons.drag_indicator_sharp))
      ],
    );
  }
}
