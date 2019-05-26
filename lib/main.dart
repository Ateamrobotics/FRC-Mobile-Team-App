import 'package:flutter/material.dart';
import 'package:frc_teams_app/ui/login.dart';

void main() {
  runApp(new MaterialApp(
    title: 'FRC Team App',
    home: new Login(),
    theme: new ThemeData(
      accentColor: Colors.white, primaryColor: Colors.blue.shade700,),
  ));
}



