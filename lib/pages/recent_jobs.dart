import 'package:flutter/material.dart';
import 'package:visan_portal/components/job_list_item.dart';
import 'package:visan_portal/model/job_item.dart';
import 'package:visan_portal/pages/chat.dart';
import 'package:visan_portal/pages/filter.dart';
import 'package:visan_portal/pages/proposal.dart';
import 'package:visan_portal/pages/saved.dart';
import 'package:visan_portal/service/job_service.dart';
import 'package:visan_portal/service/saved_proposal_service.dart';

import '../service/chat_channel_service.dart';
import '../service/notification_service.dart';
import 'notifications.dart';

class RecentJobs extends StatefulWidget {
  const RecentJobs({super.key});

  @override
  State<StatefulWidget> createState() {
    return RecentJobsState();
  }
}

class RecentJobsState extends State<RecentJobs> {
  List<JobItem> jobItems = [];
  bool isRecent = true;

  loadItems() {
    if (isRecent) {
      setState(() {
        jobItems = JobService.getInstance().getRecentJobs();
      });
    } else {
      setState(() {
        jobItems = JobService.getInstance().getMatchedJobs();
      });
    }
  }

  loadRecentItems() {
    isRecent = true;
    loadItems();
  }

  loadMatched() {
    isRecent = false;
    loadItems();
  }

  @override
  void initState() {
    loadRecentItems();
    super.initState();
  }

  List<Widget> getListItems() {
    return jobItems.map((jobItem) => JobListItem(jobItem: jobItem)).toList();
  }

  getButtonColor(bool isPrimary) {
    return isPrimary
        ? MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 191, 231, 255))
        : MaterialStateProperty.all<Color>(Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 1, child: Image.asset('assets/images/pic.png')),
                const Expanded(
                    flex: 4,
                    child: Text(
                      'Hi, Vijay',
                      style: TextStyle(
                          color: Color.fromARGB(255, 11, 88, 131),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans'),
                    )),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      child: Icon(Icons.notifications_outlined),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notify(
                                  notificationService:
                                      NotificationService.instance)),
                        );
                      },
                    )),
                 Expanded(
                    flex: 1, child: InkWell(child: Icon(Icons.align_horizontal_right_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Filter()),
                        );
                    }),
                    )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: getButtonColor(isRecent),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 11, 88, 131)),
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(45))),
                    onPressed: () {
                      loadRecentItems();
                    },
                    child: const Text("Recent Jobs"),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: getButtonColor(!isRecent),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 11, 88, 131)),
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(45))),
                    onPressed: () {
                      loadMatched();
                    },
                    child: const Text("Matched"),
                  ),
                ))
              ],
            ),
            Column(
              children: getListItems(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
        unselectedIconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: (value) {
          switch (value) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Saved(
                        savedProposalService: SavedProposalService.instance)),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Proposal(
                        savedProposalService: SavedProposalService.instance)),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Chats(chatChannelService: ChatChannelService.instance)),
              );
              break;
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.select_all_outlined),
            label: 'Proposal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
