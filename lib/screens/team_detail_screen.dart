import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:hockey/blocs/team_bloc.dart';
import 'package:hockey/blocs/team_provider.dart';
import 'package:hockey/classes/response.dart';
import 'package:hockey/models/team.dart';
import 'package:hockey/widgets/loader.dart';
import 'package:hockey/widgets/team_division_conference.dart';
import 'package:hockey/widgets/team_error.dart';
import 'package:hockey/widgets/team_first_year.dart';
import 'package:hockey/widgets/team_location_venue.dart';
import 'package:hockey/widgets/team_name.dart';
import 'package:hockey/widgets/team_padding.dart';
import 'package:hockey/widgets/team_website.dart';
import 'package:hockey/widgets/title.dart';

class TeamDetailScreen extends StatefulWidget {
  final int? teamId;
  static const id = "team_detail_screen";
  const TeamDetailScreen({super.key, this.teamId});

  @override
  State<TeamDetailScreen> createState() => _TeamDetailScreenState();
}

class _TeamDetailScreenState extends State<TeamDetailScreen> {
  bool isLoading = true;
  TeamBloc? bloc;
  String? errorMessage;
  Team? team;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bloc = TeamProvider.of(context);
      setTeamToState(bloc!);
    });
  }

  /// Sets a ``Team`` to state using the ``TeamBloc.getTeamById``.
  /// Uses the screen paramater ``teamId`` that is passed in when
  /// the user clicks on an item in the ``HomeScreen``.
  void setTeamToState(TeamBloc bloc) async {
    if (isLoading) {
      BlocResponse response = await bloc.getTeamById(widget.teamId!);
      if (response.payload != null && response.errorMessage == null) {
        setState(() {
          team = response.payload;
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = response.errorMessage;
          isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return loader(isLoading);
    }

    return Scaffold(
      appBar: AppBar(title: title('Team')),
      body: SingleChildScrollView(
        child: ResponsiveGridRow(children: [
          teamPadding(),
          teamError(errorMessage),
          teamName(team!),
          teamLocationVenue(team!),
          teamDivisionConference(team!),
          teamWebsite(team!),
          teamFirstYear(team!),
        ]),
      ),
    );
  }
}
