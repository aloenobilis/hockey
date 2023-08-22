import 'package:flutter/material.dart';
import 'package:hockey/models/team.dart';
import 'package:hockey/widgets/loader.dart';
import 'package:hockey/widgets/team_item.dart';

/// Build a list of ``teamItem``'s.
/// The ``loader`` will be shown if all the items/teams have been exhausted,
/// this is evident by the comparison ``index == teams.length`` which indicates
/// the current end of the list of items/teams.
/// Otherwise return a ``teamItem`` widget.
/// The catch block will be invoked as an error is emitted when a team does not
/// exist for a given team id indicating no more teams were loaded i.e all
/// teams have been loaded.
Widget teamList(List<Team> teams, ScrollController controller, bool isLoading,
    String? errorMessage) {
  return ListView.builder(
    // + 1 for the loader so it fits in the item count
    itemCount: teams.length + 1,
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    itemBuilder: (BuildContext context, int index) {
      // if at the bottom show loader (set to state)
      if (index == teams.length && errorMessage == null) {
        return loader(isLoading);
      } else {
        try {
          return teamItem(teams[index]);
        } catch (err) {
          // errors at end of range indicating no more teams were loaded
          // for the given team id
          return const Center(child: Text("End Of Teams"));
        }
      }
    },
    controller: controller,
  );
}
