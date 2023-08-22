import 'package:flutter/material.dart';
import 'package:hockey/models/team.dart';
import 'package:responsive_grid/responsive_grid.dart';

ResponsiveGridCol teamFirstYear(Team team) {
  return ResponsiveGridCol(
    sm: 12,
    md: 12,
    lg: 12,
    child: team.firstYearOfPlay != null
        ? Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: "First Year of Play:"),
                TextSpan(
                    text: team.firstYearOfPlay,
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            textAlign: TextAlign.center,
          )
        : const Text(""),
  );
}
