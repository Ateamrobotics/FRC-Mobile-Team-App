import 'package:flutter/material.dart';
import 'package:frc_teams_app/database/monogDB.dart';

class ProjectHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProjectHomeState();
  }
}

class ProjectHomeState extends State<ProjectHome> {
  MongoDB mongo = MongoDB();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final title = AppBar(
      title: Text(
        "Team " + mongo.getTeamName(),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 14),
      ),
      backgroundColor: Colors.black,
    );
    Scaffold(
      key: _scaffoldKey,
      appBar: title,
      body: ListView(),
    );
  }
}
