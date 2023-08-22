import 'package:flutter/material.dart';
import 'package:hockey/screens/team_detail_screen.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:hockey/models/team.dart';

// name
// abbreviation
// conference
// division

Widget teamItem(Team team, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TeamDetailScreen(
                    teamId: team.id,
                  )));
    },
    child: Card(
      child: Container(
        padding: const EdgeInsets.all(4),
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
              xs: 12,
              md: 12,
              lg: 12,
              child: team.name != null && team.abbreviation != null
                  ? Text(
                      "${team.name} (${team.abbreviation})",
                      style: const TextStyle(
                          color: Colors.teal,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )
                  : const Text("No Name")),
          ResponsiveGridCol(
              xs: 12,
              md: 12,
              lg: 12,
              child: team.conference!['name'] != null
                  ? Text("Conference: ${team.conference!['name']}")
                  : const Text("")),
          ResponsiveGridCol(
              xs: 12,
              md: 12,
              lg: 12,
              child: team.division!['name'] != null
                  ? Text("Division: ${team.division!['name']}")
                  : const Text("")),
        ]),
      ),
    ),
  );
}
