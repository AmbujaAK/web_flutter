import 'package:flutter/material.dart';
import 'package:isf_demo/drawer/custom_navigation_drawer.dart';

class QuickLinks extends StatefulWidget {
  @override
  _QuickLinksState createState() => _QuickLinksState();
}

class _QuickLinksState extends State<QuickLinks> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 200),
        child: Container(
          color: drawerBackgroundColor,
        ),
      ) 
    );
  }
}