import 'package:flutter/material.dart';


class MenuItem extends StatefulWidget {

  final String title;
  final IconData icon;
  
  const MenuItem({
    Key key,
    this.title,
    this.icon,
  }) : super(key:key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: ListTile(
          title: new Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leading: Icon(widget.icon, color: Colors.white),
          enabled: true,
          onTap: () {
            Tooltip(message: widget.title + 'clicked !');
          },
        ),
        color: Colors.grey,
      ),
    );
  }
}