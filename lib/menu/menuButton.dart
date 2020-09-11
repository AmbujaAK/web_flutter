import 'package:flutter/material.dart';


class MenuButton extends StatefulWidget {

  final IconData icon;
  final String iconFor;

  MenuButton({Key key, this.icon, this.iconFor});

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
      onPressed: () {},
      child: new Icon(
        widget.icon,
        color: Colors.white,
      ),
      shape: new CircleBorder(),
      fillColor: Colors.blue,
      elevation: 0.0,
      padding: const EdgeInsets.all(0.0),
      hoverColor: Colors.lightBlue,
      hoverElevation: 0.1,
    );
  }
}