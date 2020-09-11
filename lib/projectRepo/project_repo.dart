import 'package:flutter/material.dart';
import 'package:isf_demo/model/project_repo_model.dart';
import 'package:isf_demo/projectRepo/project_repo_item.dart';
import 'package:isf_demo/util/isf_api.dart';

class ProjectRepo extends StatefulWidget {
  @override
  _GithubProjectState createState() => _GithubProjectState();
}

class _GithubProjectState extends State<ProjectRepo> {
  List<ProjectRepoModel> _repos = List();
  bool _isFetching = false;
  String _error;

  @override
  void initState() {
    super.initState();
    loadTrendingRepos();
  }

  void loadTrendingRepos() async {
    setState(() {
      _isFetching = true;
      _error = null;
    });

    final repos = await ISF_API.getUsersRepositories();
    setState(() {
      _isFetching = false;
      if (repos != null) {
        this._repos = repos;
      } else {
        _error = 'Error fetching repos';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text('Github Repository'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: buildBody(context),
    );
  }
  
  Widget buildBody(BuildContext context) {
    if (_isFetching) {
      return Container(
          alignment: Alignment.center, child: Icon(Icons.timelapse));
    } else if (_error != null) {
      return Container(
          alignment: Alignment.center,
          child: Text(
            _error,
            style: Theme.of(context).textTheme.headline5,
          ));
    } else {
      return ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          itemCount: _repos.length,
          itemBuilder: (BuildContext context, int index) {
            return ProjectRepoItem(_repos[index]);
          });
    }
  }
}