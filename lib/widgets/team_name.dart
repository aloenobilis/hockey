import 'package:flutter/material.dart';
import 'package:hockey/models/team.dart';
import 'package:responsive_grid/responsive_grid.dart';

ResponsiveGridCol teamName(Team team) {
  return ResponsiveGridCol(
      sm: 12,
      md: 12,
      lg: 12,
      child: Center(
        child: team!.name != null
            ? Text(
                team!.name!,
                style: const TextStyle(
                    fontSize: 32,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              )
            : const Text("no name"),
      ));
}
