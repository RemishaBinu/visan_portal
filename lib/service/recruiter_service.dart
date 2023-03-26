import 'package:visan_portal/model/recruiter_model.dart';

class RecruiterService{
  static RecruiterService instance = RecruiterService(); 
  static getInstance(){
    return instance;
  }

  List<RecruiterModel> getDetails(){
    List<RecruiterModel> details = [
     RecruiterModel(name: 'Vijayakumar R', jobRole: 'Application Developer', status: 'View resume'),
     RecruiterModel(name: 'Vijayakumar R', jobRole: 'Application Developer', status: 'View resume'),
     RecruiterModel(name: 'Vijayakumar R', jobRole: 'Application Developer', status: 'View resume'),
     RecruiterModel(name: 'Vijayakumar R', jobRole: 'Application Developer', status: 'View resume'),
     RecruiterModel(name: 'Vijayakumar R', jobRole: 'Application Developer', status: 'View resume'),
     RecruiterModel(name: 'Vijayakumar R', jobRole: 'Application Developer', status: 'View resume'),

    ];
    return details;
  }
}