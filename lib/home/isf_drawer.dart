import 'package:flutter/material.dart';
import 'package:isf_demo/drawer/custom_navigation_drawer.dart';

class IsfDrawer extends StatefulWidget {

  final bool isCollapsed ;
  final AnimationController animationController;
  final Animation<double> widthAnimation;
  final int currentSelectedIndex;

  IsfDrawer({
    Key key,
    this.isCollapsed,
    this.animationController,
    this.widthAnimation,
    this.currentSelectedIndex
  });

  @override
  _IsfDrawerState createState() => _IsfDrawerState();
}

class _IsfDrawerState extends State<IsfDrawer> {

  bool _isCollapsed;
  int _currentSelectedIndex;

  @override
  void initState() {
    super.initState();
    _isCollapsed = widget.isCollapsed;
    _currentSelectedIndex = widget.currentSelectedIndex;
  }
  @override
  Widget build(BuildContext context) {

        var material = Material(
              elevation: 80.0,
              child: Container(
                width: widget.widthAnimation.value,
                color: drawerBackgroundColor,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isCollapsed = !widget.isCollapsed;
                          _isCollapsed
                              ? widget.animationController.forward()
                              : widget.animationController.reverse();
                        });
                      },
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        progress: widget.animationController,
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
                                  _currentSelectedIndex = counter;
                                });
                              },
                              isSelected: widget.currentSelectedIndex == counter,
                              title: navigationItems[counter].title,
                              icon: navigationItems[counter].icon,
                              animationController: widget.animationController,
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
            );
    return material;
  }
}