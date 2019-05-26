import 'package:flutter/material.dart';
import 'package:frc_teams_app/database/monogDB.dart';
import 'package:frc_teams_app/ui/projectHome.dart';
import 'package:frc_teams_app/ui/webView.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  MongoDB mongo = MongoDB();

  @override
  Widget build(BuildContext context) {
    TextStyle field = TextStyle(
      fontFamily: 'Arial',
      fontSize: MediaQuery.of(context).size.width / 20,
    );
    final title = AppBar(
      title: Text(
        "Team " + mongo.getTeamName(),
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 14),
      ),
      backgroundColor: Colors.black,
    );
    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              mongo.getTeamName(),
              style: TextStyle(
                  color: mongo.getTeamAccentColour(),
                  fontSize: MediaQuery.of(context).size.width / 14),
            ),
            decoration: BoxDecoration(
              color: mongo.getTeamColour(),
            ),
          ),
          ListTile(
            title: Text(
              'Message',
              style: field,
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: Icon(Icons.message),
          ),
          ListTile(
            title: Text(
              'Projects',
              style: field,
            ),
            onTap: () {
              Navigator.pop(context);
              var router = new MaterialPageRoute(builder: (BuildContext context) {
                return new ProjectHome();
              });
              Navigator.of(context).push(router);
            },
            trailing: Icon(Icons.build),
          ),
          ListTile(
            title: Text(
              'Team Schedual',
              style: field,
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: Icon(Icons.schedule),
          ),
          ListTile(
            title: Text(
              'Events',
              style: field,
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: Icon(Icons.event),
          ),
          Container(
            alignment: Alignment.center,
            color: mongo.getTeamColour(),
            child: ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: MediaQuery.of(context).size.width / 20,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: title,
      drawer: drawer,
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Information"),
          content: new Text(
              "Welcome the FRC mobile app. You can use this app to manage your team, messaging, project management,create metting dates. If you need help getting started or don't have a login click yes. Created by A-Team Robotics 2019."),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "No",
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new FlatButton(
              child: new Text(
                "Yes",
                style: TextStyle(color: Colors.blueGrey),
              ),
              onPressed: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return new WebViewPage();
                });
                Navigator.of(context).push(router);
              },
            ),
          ],
        );
      },
    );
  }
}
