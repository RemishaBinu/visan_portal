import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:visan_portal/components/job_category_tile.dart.dart';
import 'package:visan_portal/pages/job_selection.dart';
import 'package:visan_portal/service/job_service.dart';
import '../components/custom_button.dart';
import '../model/job.dart';

class JobSearch extends StatefulWidget {
  JobService jobService;
  JobSearch({super.key, required this.jobService});

  @override
  State<JobSearch> createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
  late List<Job> jobs;

  @override
  void initState() {
    List<Job> jobFromUser = widget.jobService.getJobs();

    setState(() {
      jobs = jobFromUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'What type of job do you search for',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: this.jobs.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                        height: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(),
                        child: JobCategory(jobs: jobs[index]));
                  }),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(0, 11, 88, 131)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 117, 117, 117)),
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(45)),
                        side: MaterialStateProperty.all(const BorderSide(
                            color: Color.fromARGB(255, 235, 235, 235),
                            width: 1.0,
                            style: BorderStyle.solid))),
                    onPressed: null,
                    child: const Text('Others')),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: CustomButton(
                    text: 'Submit',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JobSelection()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
