import 'package:flutter/material.dart';

class ProjectDetails extends StatefulWidget {

  final List projects;
  final int index;

  ProjectDetails({Key key, this.projects, this.index}):super(key:key);

  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}