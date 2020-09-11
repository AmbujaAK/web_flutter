import 'package:flutter/material.dart';
import 'package:isf_demo/project_details.dart';


class Project extends StatefulWidget {

  final List projects;
  final int index;

  Project({Key key, this.projects, this.index}):super(key:key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.projects == null ? 0 : widget.projects.length,
      itemBuilder: (context, index){
        return Hero(
          tag: widget.projects[index]['projectId'],
          child: Card(
            child: ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  image: DecorationImage(
                    image: NetworkImage(widget.projects[index]['img_url']),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
              //title: Text(widget.projects[index]['fname'] + " " +widget.projects[index]['lname']),
              //subtitle: Text(widget.projects[index]['email']),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProjectDetails(projects: widget.projects,index: index),
                  )
                );
              },
            ),
          ),
        );
      },
    );
  }
}