import 'package:isf_demo/myProjects.dart';
import 'package:isf_demo/quickLinks.dart';
import 'package:isf_demo/util/isf_constant.dart';

import 'custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  CollapsingNavigationDrawerState createState() {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    widthAnimation =
        Tween<double>(begin: IsfConstant.minWidth, end: IsfConstant.maxWidth)
            .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Material(
          elevation: 80.0,
          child: Container(
            width: widthAnimation.value,
            color: drawerBackgroundColor,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                      isCollapsed
                          ? _animationController.forward()
                          : _animationController.reverse();
                    });
                  },
                  child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: _animationController,
                    color: selectedColor,
                    size: 28.0,
                  ),
                ),

                //Divider(color: Colors.white10, height: 40.0,),

                SizedBox(height: 4.0),
                //CollapsingListTile(title: 'Ambuja', icon: Icons.person, animationController: _animationController,),
                //Divider(color: Colors.grey, height: 40.0,),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, counter) {
                      return Divider(height: 12.0);
                    },
                    itemBuilder: (context, counter) {
                      return CollapsingListTile(
                        onTap: () {
                          setState(() {
                            currentSelectedIndex = counter;
                          });
                        },
                        isSelected: currentSelectedIndex == counter,
                        title: navigationItems[counter].title,
                        icon: navigationItems[counter].icon,
                        animationController: _animationController,
                      );
                    },
                    itemCount: navigationItems.length,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
        ),
        MyProjects(),
        QuickLinks()
      ],
    );
  }
}
