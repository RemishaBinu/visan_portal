import '../model/job.dart';
import 'package:flutter/material.dart';

class JobService{
  List<Job> getJobs(){
     List<Job> jobCategory = [Job(job: 'IT and Information', icon: Icons.monitor),
  Job(job: 'Software Development', icon: Icons.code),
  Job(job: 'Content Writing', icon: Icons.draw),
  Job(job: 'Software Development', icon: Icons.monitor),
  Job(job: 'Software Testing', icon: Icons.monitor),
  Job(job: 'UI/UX Design', icon: Icons.draw)
  ];  
  return jobCategory;
  }
}