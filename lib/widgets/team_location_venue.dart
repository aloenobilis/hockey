import 'package:flutter/material.dart';
import 'package:hockey/models/team.dart';
import 'package:responsive_grid/responsive_grid.dart';

ResponsiveGridCol teamLocationVenue(Team team) {
  return ResponsiveGridCol(
      sm: 12,
      md: 12,
      lg: 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          team!.locationName != null
              ? Text.rich(
                  TextSpan(
                    children: [
                      const WidgetSpan(child: Icon(Icons.pin_drop_outlined)),
                      TextSpan(text: team.locationName),
                    ],
                  ),
                )
              : const Text(""),
          team!.venue != null
              ? Text.rich(
                  TextSpan(
                    children: [
                      const WidgetSpan(child: Icon(Icons.stadium_outlined)),
                      TextSpan(text: team.venue!['name']),
                    ],
                  ),
                )
              : const Text(""),
        ],
      ));
}
