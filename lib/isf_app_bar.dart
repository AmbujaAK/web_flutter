import 'package:flutter/material.dart';
import 'package:isf_demo/drawer/custom_navigation_drawer.dart';
import 'package:isf_demo/menu/menuIcon.dart';

class IsfAppBar extends StatefulWidget {
  @override
  _IsfAppBarState createState() => _IsfAppBarState();
}

class _IsfAppBarState extends State<IsfAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottomOpacity: 10,
      backgroundColor: drawerBackgroundColor,
      elevation: 0.5,
      title: new Text("ISF Integrated Service Flow"),
      actions: <Widget>[

        MenuIcon(icon: Icons.location_on),
        MenuIcon(icon: Icons.timelapse),
        MenuIcon(icon: Icons.chat_bubble),
        MenuIcon(icon: Icons.notifications),
        MenuIcon(icon: Icons.timelapse),

        SizedBox(width: 12),

        Row(
          children: <Widget>[
            MenuIcon(icon: Icons.person_pin),
            Text("PM-MMEA")
          ],
        ),

        Row(
          children: <Widget>[
            MenuIcon(icon: Icons.exit_to_app),
            Text("Logout")
          ],
        ),

        SizedBox(width: 12),

        //MenuButton(icon: Icons.pages),
      ],
    );
  }
}
