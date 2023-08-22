import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:hockey/models/team.dart';

Widget teamItem(Team team) {
  return InkWell(
    onTap: () {},
    child: Card(
      child: Container(
        padding: const EdgeInsets.all(4),
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
              xs: 12, md: 12, lg: 12, child: Text("Team: ${team.teamName}")),
          ResponsiveGridCol(
              xs: 12,
              md: 12,
              lg: 12,
              child: Text("Location: ${team.locationName}")),
          ResponsiveGridCol(
              xs: 12,
              md: 12,
              lg: 12,
              child: Text("abbreviation: ${team.abbreviation}")),
        ]),
      ),
    ),
  );
}
