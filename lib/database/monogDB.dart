import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDB {
  var teamName = '6544';
  Color teamColour = Colors.purple.shade700;
  Color teamAccentColour = Colors.white;

  String getTeamName() {
    return teamName;
  }

  getTeamColour() {
    return teamColour;
  }

  getTeamAccentColour() {
    return teamAccentColour;
  }

}
