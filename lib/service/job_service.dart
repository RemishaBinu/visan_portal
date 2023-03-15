import 'package:visan_portal/model/job_item.dart';

import '../model/job.dart';
import 'package:flutter/material.dart';

class JobService {

  static JobService instance = JobService();

  static getInstance(){
    return instance;
  }

  List<Job> getJobs() {
    List<Job> jobCategory = [
      Job(job: 'IT and Information', icon: Icons.monitor),
      Job(job: 'Software Development', icon: Icons.code),
      Job(job: 'Content Writing', icon: Icons.draw),
      Job(job: 'Software Development', icon: Icons.monitor),
      Job(job: 'Software Testing', icon: Icons.monitor),
      Job(job: 'UI/UX Design', icon: Icons.draw)
    ];
    return jobCategory;
  }

  List<JobItem> getRecentJobs(){
    return (List<int>.generate(20, (index) => index + 1 ))
    .map((_) => JobItem.createDefault())
    .toList();    
  }

  List<JobItem> getMatchedJobs(){
    return (List<int>.generate(3, (index) => index + 1 ))
    .map((_) => JobItem.createDefault())
    .toList();    
  }
}
