import 'package:flutter/material.dart';
import 'menu/menuItem.dart';

class IsfDrawer extends StatefulWidget {
  @override
  _IsfDrawerState createState() => _IsfDrawerState();
}

class _IsfDrawerState extends State<IsfDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: new Center(child: new Text("Ambuja")),
            decoration: BoxDecoration(
              color: Colors.grey
            ), 
          ),

          MenuItem(title: "Home", icon: Icons.home,),
          MenuItem(title: "Self Service", icon: Icons.person),
          MenuItem(title: "Project", icon: Icons.computer,),
          MenuItem(title: "Delivery Tracker", icon: Icons.art_track),
          MenuItem(title: "Delivery Acceptence", icon: Icons.adjust),
          MenuItem(title: "Engineer Engagement", icon: Icons.people),
          MenuItem(title: "Master Data", icon: Icons.developer_board),
          MenuItem(title: "Reports", icon: Icons.report),
          MenuItem(title: "Bot Store", icon: Icons.store),
        ],
      ),
    );
  }
}