import 'package:flutter/material.dart';
import 'package:isf_demo/util/isf_theme.dart';

class MenuIcon extends StatefulWidget {

  final IconData icon;
  final String iconFor;
  final Color iconColor;

  MenuIcon({Key key, this.icon, this.iconFor, this.iconColor});

  @override
  _MenuIconState createState() => _MenuIconState();
}

class _MenuIconState extends State<MenuIcon> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: drawerBackgroundColor,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            shape: CircleBorder(
              // side: BorderSide(
              //   width: 4.0,
              //   color: Colors.lightBlue
              // )
            ),
          ),
          child: IconButton(
            icon: Icon(widget.icon),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}