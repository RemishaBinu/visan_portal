import 'package:flutter/material.dart';

import 'package:visan_portal/components/header_component.dart';

import '../components/tags.dart';
import 'job_selection.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => FilterState();
}

class FilterState extends State<Filter> {
  bool value = false;
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          Header(text: 'Filter'),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text('CATEGORY',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 117, 117),
                        fontFamily: 'Open Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Expanded(
                  flex: 1,
                  child: InkWell(
                      child: Icon(Icons.add,
                          color: Color.fromARGB(255, 11, 88, 131)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JobSelection()),
                        );
                      }))
            ],
          ),
          SizedBox(height: 10),
          TagsComponent(
            tags: [
              'Android App development',
              'Web Design',
              'UI/UX',
              'App Design',
              'Java',
              'Python'
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text('CITY',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 117, 117),
                        fontFamily: 'Open Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    child: Icon(Icons.add,
                        color: Color.fromARGB(255, 11, 88, 131)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const JobSelection()),
                      );
                    },
                  ))
            ],
          ),
          SizedBox(height: 10),
          TagsComponent(
            tags: [
              'Coimbatore',
              'Banglore',
              'Hydrabad',
              'Chennai',
              'Kochi',
              'Pune',
              'Mumbai'
            ],
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            child: Text('JOB TYPE',
                style: TextStyle(
                    color: Color.fromARGB(255, 117, 117, 117),
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Checkbox(
                value: this.val,
                onChanged: (bool? value) {
                  setState(() {
                    this.val = value!;
                  });
                },
              ),
              Text(
                'Part Time',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 117, 117, 117),
                    fontFamily: 'Open Sans'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: this.value,
                onChanged: (bool? value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
              SizedBox(width: 10),
              Text(
                'Full Time',
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 117, 117, 117),
                    fontFamily: 'Open Sans'),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
