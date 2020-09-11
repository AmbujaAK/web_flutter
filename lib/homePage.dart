import 'package:flutter/material.dart';
import 'drawer/collapsing_navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CollapsingNavigationDrawer(),
      ],
    );
  }
}
