import 'package:flutter/material.dart';
import 'package:isf_demo/drawer/custom_navigation_drawer.dart';
import 'package:isf_demo/projectRepo/project_repo.dart';

class MyProjects extends StatefulWidget {
  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 200),
          child: Container(color: drawerBackgroundColor, child: ProjectRepo()),
        ));
  }
}
