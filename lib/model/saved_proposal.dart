import 'package:flutter/material.dart';

class SavedProposal {
  String title;
  String company;
  IconData? icon;
  String workMode;
  String salary;
  String status;
  String date;
  String paymentStatus;
  String place;
  IconData locationIcon;

  SavedProposal(
      {required this.title,
      required this.company,
      this.icon,
      required this.workMode,
      required this.salary,
      required this.status,
      required this.date,
      required this.paymentStatus,
      required this.place,
      required this.locationIcon});
}
