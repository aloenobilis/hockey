import 'package:flutter/material.dart';
import 'package:hockey/models/team.dart';
import 'package:responsive_grid/responsive_grid.dart';

ResponsiveGridCol teamDivisionConference(Team team) {
  return ResponsiveGridCol(
    sm: 12,
    md: 12,
    lg: 12,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      team.division!['name'] != null
          ? Text("Division: ${team.division!['name']}")
          : const Text(""),
      team.conference!['name'] != null
          ? Text("Conference: ${team.conference!['name']}")
          : const Text(""),
    ]),
  );
}
