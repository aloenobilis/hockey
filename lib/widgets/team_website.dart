import 'package:flutter/material.dart';
import 'package:hockey/models/team.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

ResponsiveGridCol teamWebsite(Team team) {
  return ResponsiveGridCol(
    child: Center(
      child: team.officialSiteUrl != null
          ? InkWell(
              child: Text(
                team.officialSiteUrl!,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              // ignore: deprecated_member_use
              onTap: () => launch(team.officialSiteUrl!))
          : const Text(""),
    ),
  );
}
